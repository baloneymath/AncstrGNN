
from util.config import params_setup, logging_setup
from netlist import netlist, parse_netlist
from sym import parse_sym
from ckt.graph import build_graph
from train.train import *

import matplotlib.pyplot as plt
import networkx as nx

import dgl

def init_netlist(para):
    netlist_file = open(para.netlist, 'r')
    netlist_str = netlist_file.read()
    netlist_file.close()
    netlist = parse_netlist.parse_hspice(netlist_str)
    return netlist

def init_sym(para):
    sym_file = open(para.sym, 'r')
    sym_str = sym_file.read()
    sym_file.close()
    sym = parse_sym.parse(sym_str)
    return sym

def printCkt(subCkt, prefix, showDev=True):
    print(prefix + subCkt.name + ' ' + subCkt.type + ' ' + str(subCkt.level))
    if showDev == True:
        for dev in subCkt.devices:
            print('|  ' + prefix +  dev.name + ' ' + dev.type + ' ' + str(dev.level))
    for ckt in subCkt.subCkts:
        printCkt(ckt, '|  ' + prefix, showDev)

def setTrainedDevFeature(topCkt, node_embeddings):
    for i in range(len(node_embeddings)):
        topCkt.devices[i].feat = node_embeddings[i]


def embedSubCktFeature(topCkt, G_nx_dict):
    for subCkt in topCkt.allSubCkts:
        subG = G_nx_dict[subCkt.name]
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
            feat_cat = torch.cat([topCkt.devices[sorted_pg[i][0]].feat for i in range(num_cat)])
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

def computeMatching(topCkt, sym_ans, threshold):
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
    for level in range(topCkt.max_level):
        # subCkt matching
        subCkts = topCkt.allSubCkts_level[level]
        # for ckt_i in topCkt.allSubCkts_level[level]:
        for i in range(len(subCkts) - 1):
            ckt_i = topCkt.allSubCkts_level[level][i]
            for j in range(i + 1, len(subCkts)):
                ckt_j = topCkt.allSubCkts_level[level][j]
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
                            if parentCkt.name not in match_ckt.keys():
                                match_ckt[parentCkt.name] = list()
                            match_ckt[parentCkt.name].append({ckt_i.name_suffix, ckt_j.name_suffix})

        # print()

    return match_ckt

def computeAccuracy(topCkt, match_ckt, sym_ans):
    # print(match_ckt.keys())
    # print()
    # print(sym_ans.keys())
    res = []
    ans = []
    for i in range(len(topCkt.allSubCkts) - 1):
        ckt_i = topCkt.allSubCkts[i]
        for j in range(i + 1, len(topCkt.allSubCkts)):
            ckt_j = topCkt.allSubCkts[j]
            if ckt_i.parentCkt != ckt_j.parentCkt:
                res.append(0)
                ans.append(0)
            else:
                parName = ckt_i.parentCkt.name
                tar = {ckt_i.name_suffix, ckt_j.name_suffix}
                if parName in match_ckt.keys() and tar in match_ckt[parName]:
                    res.append(1)
                else:
                    res.append(0)
                if parName in sym_ans.keys() and tar in sym_ans[parName]:
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

    precision = true_pos / (true_pos + false_pos)
    recall    = true_pos / (true_pos + false_neg)
    accuracy  = (true_pos + true_neg) / (true_pos + true_neg + false_pos + false_neg)

    print(precision)
    print(recall)
    print(accuracy)

    return precision, recall, accuracy

def main():
    para = params_setup()
    netlist = init_netlist(para)
    sym_ans = init_sym(para)
       
    # print(sym_ans)
    # return

    G_nx_dict, topCkt = build_graph(netlist)

    # printCkt(topCkt, '|-', showDev=True)
    # return

    G_nx_top = G_nx_dict[topCkt.name]
    print('Graph nodes {} edges {}'.format(G_nx_top.number_of_nodes(), G_nx_top.number_of_edges()))
    # nx.draw_networkx(G_nx)
    # plt.show()
    
    G_dgl = initFeature(G_nx_top, topCkt)
    node_embeddings = train(G_dgl, para)

    setTrainedDevFeature(topCkt, node_embeddings)
    
    embedSubCktFeature(topCkt, G_nx_dict)

    match_ckt = computeMatching(topCkt, sym_ans, 1)
    precision, recall, accuracy = computeAccuracy(topCkt, match_ckt, sym_ans)

    # n1 = node_embeddings[topCkt.get_device_by_name('ADC_CORE/xi3/xi1/xi1<3>/xi0/m0').idx]
    # n2 = node_embeddings[topCkt.get_device_by_name('ADC_CORE/xi3/xi1/xi1<5>/xm10').idx]
    # n1 = node_embeddings[topCkt.get_device_by_name('ADC_CORE/xi11/xm0').idx]
    # n2 = node_embeddings[topCkt.get_device_by_name('ADC_CORE/xi12/xm0').idx]
    # print(n1)
    # print(n2)
    # cos = nn.CosineSimilarity(dim=0, eps=1e-8)
    # print(cos(n1, n2))

if __name__ == "__main__":
    main()
