
from util.config import params_setup, logging_setup
from netlist import netlist, parse_netlist
from sym import parse_sym
from ckt.graph import build_graph
from train.train import *

import matplotlib.pyplot as plt
import networkx as nx

import dgl
import numpy as np

def init_netlist(para):
    netlist = dict()
    for n in para.netlist:
        netlist_file = open(n, 'r')
        netlist_str = netlist_file.read()
        netlist_file.close()
        name = n.split('/')[-1][0:-3]
        netlist[name] = parse_netlist.parse_hspice(netlist_str)
    return netlist

def init_sym(para):
    sym = dict()
    for n in para.sym:
        sym_file = open(n, 'r')
        sym_str = sym_file.read()
        sym_file.close()
        name = n.split('/')[-1][0:-4]
        sym[name] = parse_sym.parse(sym_str)
    return sym

def printCkt(subCkt, prefix, showDev=True):
    print(prefix + subCkt.name + ' ' + subCkt.type + ' ' + str(subCkt.level))
    if showDev == True:
        for dev in subCkt.devices:
            print('|  ' + prefix +  dev.name + ' ' + dev.type + ' ' + str(dev.level))
    for ckt in subCkt.subCkts:
        printCkt(ckt, '|  ' + prefix, showDev)

def setTrainedDevFeature(topCkt, node_embeddings):
    for cktName, ckt in topCkt.items():
        for i in range(len(node_embeddings[cktName])):
            ckt.devices[i].feat = node_embeddings[cktName][i]


def embedSubCktFeature(topCkt, G_nx_dict):
    for cktName, ckt in topCkt.items():
        for subCkt in ckt.allSubCkts:
            subG = G_nx_dict[cktName][subCkt.name]
            if subG.number_of_nodes() > 0 and subG.number_of_edges() > 0:
                # print('Graph nodes {} edges {}'.format(subG.number_of_nodes(), subG.number_of_edges()))
                feats = []
                for dev in subCkt.devices:
                    feats.append(dev.feat) 
                simpG = nx.DiGraph()
                for n, d in subG.nodes(data=True):
                    simpG.add_node(n, device=d['device'])
                for u, v, d in subG.edges(data=True):
                    type = d['in_type']
                    w = 0
                    if type == 'gate':
                        w = 1
                    elif type == 'drain':
                        w = 1
                    elif type == 'source':
                        w = 1
                    if simpG.has_edge(u, v):
                        simpG[u][v]['weight'] += w
                    else:
                        simpG.add_edge(u, v, weight=w)
                assert simpG.number_of_nodes() == subG.number_of_nodes()
                pg = nx.pagerank(simpG, alpha=0.85)
                sorted_pg = sorted(pg.items(), key=lambda x: x[1], reverse=True)
                
                num_cat = min(5, len(pg))
                feat_cat = torch.cat([ckt.devices[sorted_pg[i][0]].feat for i in range(num_cat)])
                subCkt.feat = feat_cat
            if subG.number_of_edges() == 0:
                # print(subCkt.name, subCkt.type, subG.number_of_nodes())
                assert subG.number_of_nodes() == 1
                feat = None
                for n, d in subG.nodes(data=True):
                    feat = d['device'].feat
                subCkt.feat = feat

            assert subCkt.feat != None
    return

def computeMatching(topCkt, threshold):
    # max_l1, min_l1 = 0, 10000
    # max_l2, min_l2 = 0, 10000
    # for subCkt in topCkt.allSubCkts:
        # max_l1 = max(max_l1, subCkt.level)
        # min_l1 = min(min_l1, subCkt.level)
    # for dev in topCkt.devices:
        # max_l2 = max(max_l2, dev.level)
        # min_l2 = min(min_l2, dev.level)
    # print(max_l1, min_l1)
    # print(max_l2, min_l2)
    match_ckt = dict()
    for cktName, ckt in topCkt.items():
        match_ckt[cktName] = dict()
        for level in range(ckt.max_level):
            # subCkt matching
            subCkts = ckt.allSubCkts_level[level]
            # for ckt_i in topCkt.allSubCkts_level[level]:
            for i in range(len(subCkts) - 1):
                ckt_i = ckt.allSubCkts_level[level][i]
                for j in range(i + 1, len(subCkts)):
                    ckt_j = ckt.allSubCkts_level[level][j]
                # for ckt_j in topCkt.allSubCkts_level[level]:
                    if ckt_i != ckt_j and ckt_i.parentCkt == ckt_j.parentCkt:
                        feat_len_i = ckt_i.feat.shape[0]
                        feat_len_j = ckt_j.feat.shape[0]
                        if feat_len_i == feat_len_j:
                            # print(ckt_i.name, ckt_j.name, sim.item())
                            cos = nn.CosineSimilarity(dim=0, eps=1e-8)
                            sim = cos(ckt_i.feat, ckt_j.feat)
                            val = sim.item()
                            # print(ckt_i.name, ckt_j.name, val)

                            if val >= threshold:
                                parentCkt = ckt_i.parentCkt
                                if parentCkt.name not in match_ckt[cktName].keys():
                                    match_ckt[cktName][parentCkt.name] = list()
                                match_ckt[cktName][parentCkt.name].append({ckt_i.name_suffix, ckt_j.name_suffix})

            # print()

    return match_ckt

def computeAccuracy(topCkt, match_ckt, sym_ans):
    # print(match_ckt.keys())
    # print()
    # print(sym_ans.keys())
    result = dict()
    for cktName, ckt in topCkt.items():
        res = []
        ans = []
        for i in range(len(ckt.allSubCkts) - 1):
            ckt_i = ckt.allSubCkts[i]
            for j in range(i + 1, len(ckt.allSubCkts)):
                ckt_j = ckt.allSubCkts[j]
                if ckt_i.parentCkt != ckt_j.parentCkt:
                    res.append(0)
                    ans.append(0)
                else:
                    parName = ckt_i.parentCkt.name
                    tar = {ckt_i.name_suffix, ckt_j.name_suffix}
                    if parName in match_ckt[cktName].keys() and tar in match_ckt[cktName][parName]:
                        res.append(1)
                    else:
                        res.append(0)
                    if parName in sym_ans[cktName].keys() and tar in sym_ans[cktName][parName]:
                        ans.append(1)
                    else:
                        ans.append(0)
        
        assert len(res) == len(ans)
        true_pos, false_pos = 0., 0.
        true_neg, false_neg = 0., 0.
        for i in range(len(res)):
            if res[i] == 1 and ans[i] == 1:
                true_pos += 1
            elif res[i] == 1 and ans[i] == 0:
                false_pos += 1
            elif res[i] == 0 and ans[i] == 0:
                true_neg += 1
            elif res[i] == 0 and ans[i] == 1:
                false_neg += 1
            else:
                assert False

        precision = true_pos / (true_pos + false_pos)
        recall    = true_pos / (true_pos + false_neg)
        accuracy  = (true_pos + true_neg) / (true_pos + true_neg + false_pos + false_neg)
        FPR       = false_pos / (false_pos + true_neg)
        FOR       = false_neg / (false_neg + true_neg)
        F1        = 2 * precision * recall / (precision + recall)
        # print(precision)
        # print(recall)
        # print(accuracy)
        result[cktName] = {'precision': precision,
                           'recall': recall,
                           'accuracy': accuracy,
                           'FPR': FPR,
                           'FOR': FOR,
                           'F1': F1}


    return result

def main():
    para = params_setup()
    netlist = init_netlist(para)
    sym_ans = init_sym(para)
    # print(netlist.keys())
    # print(sym_ans.keys())
    # print(sym_ans)
    # return
    G_nx_dict = dict()
    topCkt = dict()
    G_dgl_dict = dict()
    for cktName, nl in netlist.items():
        G_nx_dict[cktName], topCkt[cktName] = build_graph(nl)
        # printCkt(topCkt, '|-', showDev=True)
        # return
        ckt = topCkt[cktName]
        G_nx = G_nx_dict[cktName]

        G_nx_top = G_nx[ckt.name]
        print('{}: graph nodes {} edges {}'.format(cktName, G_nx_top.number_of_nodes(), G_nx_top.number_of_edges()))
        # nx.draw_networkx(G_nx)
        # plt.show()
        G_dgl_dict[cktName] = initFeature(G_nx_top, ckt)

    node_embeddings = train(G_dgl_dict, para)

    setTrainedDevFeature(topCkt, node_embeddings)
    
    embedSubCktFeature(topCkt, G_nx_dict)

    result = dict()
    for th in list(np.linspace(0.8, 1.0, 100)):
        print('Computing matching with threshold {}'.format(th))
        match_ckt = computeMatching(topCkt, th)
        result[th] = computeAccuracy(topCkt, match_ckt, sym_ans)

    for th, res in result.items():
        print('Threshold {}'.format(th))
        for key, val in res.items():
            print('  {:<15} precision: {:<20} recall: {:<20} accuracy: {:<20} FPR: {:<22} FOR: {:<22} F1: {:<22}'.format(
                key,
                val['precision'],
                val['recall'],
                val['accuracy'],
                val['FPR'],
                val['FOR'],
                val['F1']))
        print()


if __name__ == "__main__":
    main()
