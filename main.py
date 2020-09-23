
from util.config import params_setup, logging_setup
from netlist import netlist, parse_netlist
from sym import parse_sym
from ckt.graph import build_graph
from train.train import *

import matplotlib.pyplot as plt
import networkx as nx

import dgl
import numpy as np

import pickle

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

def init_s3det(para):
    sym = dict()
    for n in para.s3det:
        sym_file = open(n, 'r')
        sym_str = sym_file.read()
        sym_file.close()
        name = n.split('/')[-1][0:-6]
        sym[name] = parse_sym.parse(sym_str)
    return sym

def init_s3det_pairs(para):
    pairs = dict()
    for n in para.s3det_pair:
        name = n.split('/')[-1][0:-5]
        pair_file = open(n, 'r')
        pairs[name] = list()
        for line in pair_file:
            tokens = line.rstrip('\n').split(' ')
            assert len(tokens) == 2
            pairs[name].append([tokens[0], tokens[1]])
        pair_file.close()
    return pairs
        

def printCkt(subCkt, prefix, showDev=True, showPassiveOnly=True):
    print(prefix + subCkt.name_suffix + ' ' + subCkt.type + ' ' + str(subCkt.level))
    if showDev == True:
        for dev in subCkt.devices:
            if showPassiveOnly:
                if dev.isPassive():
                    print('|  ' + prefix +  dev.name_suffix + ' ' + dev.type + ' ' + str(dev.level))
            else:
                print('|  ' + prefix +  dev.name_suffix + ' ' + dev.type + ' ' + str(dev.level))
                
    for ckt in subCkt.subCkts:
        printCkt(ckt, '|  ' + prefix, showDev, showPassiveOnly)

def setTrainedDevFeature(topCkt, node_embeddings):
    for cktName, ckt in topCkt.items():
        for i in range(len(node_embeddings[cktName])):
            ckt.allDevices[i].feat = node_embeddings[cktName][i]


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
                
                num_cat = min(20, len(pg))
                # num_cat = len(pg)
                # feat_cat = torch.mean(torch.stack([ckt.allDevices[sorted_pg[i][0]].feat for i in range(num_cat)]), dim=0)
                feat_cat = torch.cat([ckt.allDevices[sorted_pg[i][0]].feat for i in range(num_cat)])
                subCkt.feat = feat_cat
            if subG.number_of_edges() == 0:
                # print(subCkt.name, subCkt.type, subG.number_of_nodes())
                # if subG.number_of_nodes() > 1:
                    # print(subCkt.name)
                # assert subG.number_of_nodes() == 1
                feats = []
                for n, d in subG.nodes(data=True):
                    feats.append(d['device'].feat)
                feat_cat = torch.cat(feats)
                subCkt.feat = feat_cat

            assert subCkt.feat != None
    return

def fitThreshold(feat_len, ckt_size, avg_deg, avg_size):
    # return min(1, 0.95 + 2e-3 * avg_size)
    return min(1, 0.953 + 2.5e-3 * avg_deg)
    return max(1.0026 - 1.35e-5 * ckt_size, 0.95)
    return 0.986
    return max(1 - 3e-7 * ckt_size , 0.9)
    return max(0.999 - 1.8e-4 * feat_len, 0.95)

def computeMatching(topCkt, use_dev, ignore, threshold, threshold2):
    match_ckt = dict()
    for cktName, ckt in topCkt.items():
        if cktName in ignore:
            continue
        match_ckt[cktName] = dict()
        for level in range(ckt.max_level + 1):
            # subCkt matching
            subCkts = ckt.allSubCkts_level[level]
            for i in range(len(subCkts)):
                ckt_i = subCkts[i]
                for j in range(i + 1, len(subCkts)):
                    ckt_j = subCkts[j]
                    if ckt_i != ckt_j and ckt_i.parentCkt == ckt_j.parentCkt:
                        feat_len_i = ckt_i.feat.shape[0]
                        feat_len_j = ckt_j.feat.shape[0]
                        if feat_len_i == feat_len_j:
                            # print(ckt_i.name, ckt_j.name, sim.item())
                            cos = nn.CosineSimilarity(dim=0, eps=1e-8)
                            sim = cos(ckt_i.feat, ckt_j.feat)
                            val = sim.item()
                            # print(ckt_i.name, ckt_j.name, val)

                            if val >= fitThreshold(feat_len_i, len(ckt.allDevices), ckt.avg_indeg, ckt.avg_size):
                            # if val >= threshold:
                                parentCkt = ckt_i.parentCkt
                                if parentCkt.name not in match_ckt[cktName]:
                                    match_ckt[cktName][parentCkt.name] = list()
                                match_ckt[cktName][parentCkt.name].append({ckt_i.name_suffix, ckt_j.name_suffix})
            # device matching
            devices = ckt.devices_level[level]
            for i in range(len(devices)):
                dev_i = devices[i]
                if dev_i.isNmos() or dev_i.isPmos():
                    if cktName not in use_dev:
                        continue
                for j in range(i + 1, len(devices)):
                    dev_j = devices[j]
                    if dev_i.isNmos() or dev_i.isPmos():
                        if cktName not in use_dev:
                            continue
                    if dev_i != dev_j and dev_i.parentCkt == dev_j.parentCkt:
                        assert dev_i.feat.shape[0] == dev_j.feat.shape[0]
                        cos == nn.CosineSimilarity(dim=0, eps=1e-8)
                        sim = cos(dev_i.feat, dev_j.feat)
                        val = sim.item()

                        if val >= fitThreshold(dev_i.feat.shape[0], len(ckt.allDevices), ckt.avg_indeg, ckt.avg_size):
                        # if val >= threshold2:
                            parentCkt = dev_i.parentCkt
                            if parentCkt.name not in match_ckt[cktName]:
                                match_ckt[cktName][parentCkt.name] = list()
                            match_ckt[cktName][parentCkt.name].append({dev_i.name_suffix, dev_j.name_suffix})

    return match_ckt

def computeStatistics(res, ans):
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

    if true_pos == 0 and false_pos == 0:
        precision = 1.
    else:
        precision = true_pos / (true_pos + false_pos)

    if true_pos == 0 and false_neg == 0:
        recall = 1.
    else:
        recall = true_pos / (true_pos + false_neg)
    
    accuracy = (true_pos + true_neg) / (true_pos + true_neg + false_pos + false_neg)
    
    if false_pos == 0 and true_neg == 0:
        FPR = 0.
    else:
        FPR = false_pos / (false_pos + true_neg)

    if precision == 0 and recall == 0:
        F1 = 0.
    else:
        F1 = 2 * precision * recall / (precision + recall)
    MCC = (true_pos * true_neg + false_pos * false_neg) / np.sqrt((true_pos + false_pos) * (true_pos + false_neg) * (true_neg + false_pos) * (true_neg + false_neg))
    result = {
        'true_pos': int(true_pos),
        'false_pos': int(false_pos),
        'true_neg': int(true_neg),
        'false_neg': int(false_neg),
        'precision': precision,
        'recall': recall,
        'accuracy': accuracy,
        'FPR': FPR,
        'F1': F1,
        'MCC': MCC}
    return result

def computeAccuracy(topCkt, use_dev, match_ckt, sym_ans):
    result = dict()
    for cktName, ckt in topCkt.items():
        if cktName in match_ckt:
            res = []
            ans = []
            for level in range(ckt.max_level + 1):
                subCkts = ckt.allSubCkts_level[level]
                for i in range(len(subCkts)):
                    ckt_i = subCkts[i]
                    for j in range(i + 1, len(subCkts)):
                        ckt_j = subCkts[j]
                        if ckt_i.parentCkt != ckt_j.parentCkt:
                            # res.append(0)
                            # ans.append(0)
                            continue
                        else:
                            parName = ckt_i.parentCkt.name
                            tar = {ckt_i.name_suffix, ckt_j.name_suffix}
                            if parName in match_ckt[cktName] and tar in match_ckt[cktName][parName]:
                                res.append(1)
                            else:
                                res.append(0)
                            if parName in sym_ans[cktName] and tar in sym_ans[cktName][parName]:
                                ans.append(1)
                            else:
                                ans.append(0)

                devices = ckt.devices_level[level]
                for i in range(len(devices)):
                    dev_i = devices[i]
                    if dev_i.isNmos() or dev_i.isPmos():
                        if cktName not in use_dev:
                            continue
                    for j in range(i + 1, len(devices)):
                        dev_j = devices[j]
                        if dev_j.isNmos() or dev_j.isPmos():
                            if cktName not in use_dev:
                                continue
                        if dev_i.parentCkt != dev_j.parentCkt:
                            # res.append(0)
                            # ans.append(0)
                            continue
                        else:
                            parName = dev_i.parentCkt.name
                            tar = {dev_i.name_suffix, dev_j.name_suffix}
                            if parName in match_ckt[cktName] and tar in match_ckt[cktName][parName]:
                                res.append(1)
                            else:
                                res.append(0)
                            if parName in sym_ans[cktName] and tar in sym_ans[cktName][parName]:
                                ans.append(1)
                            else:
                                ans.append(0)
            
            result[cktName] = computeStatistics(res, ans)
        
        # print(cktName, result[cktName]['true_pos'], result[cktName]['false_pos'], result[cktName]['true_neg'], result[cktName]['false_neg'])
    return result


def computeAccuracyS3det(topCkt, pairs, match_ckt, sym_ans):
    result = dict()
    for cktName, ckt in topCkt.items():
        if cktName in pairs:
            res = []
            ans = []
            for pair in pairs[cktName]:
                name_i, name_j = pair[0], pair[1]
                name_i_suffix = name_i.split('/')[-1]
                name_j_suffix = name_j.split('/')[-1]
                parName_i = name_i[0:len(name_i) - len(name_i_suffix) - 1]
                parName_j = name_j[0:len(name_j) - len(name_j_suffix) - 1]
                # print(parName_i)
                assert parName_i == parName_j
                
                tar = {name_i_suffix, name_j_suffix}
                # print(tar)
                if parName_i in match_ckt[cktName] and tar in match_ckt[cktName][parName_i]:
                    res.append(1)
                else:
                    res.append(0)
                if parName_i in sym_ans[cktName] and tar in sym_ans[cktName][parName_i]:
                    ans.append(1)
                else:
                    ans.append(0)
            result[cktName] = computeStatistics(res, ans)

    return result

def main():
    #####################################################
    # Init graph and training
    #####################################################
    para = params_setup()
    netlist = init_netlist(para)
    
    G_nx_dict = dict()
    topCkt = dict()
    G_dgl_dict = dict()
    for cktName, nl in netlist.items():
        G_nx_dict[cktName], topCkt[cktName] = build_graph(nl)
        # if cktName == 'CTDSM_CORE_NEW':
            # printCkt(topCkt[cktName], '|-', showDev=True, showPassiveOnly=True)
        # exit(0)
        # return
        ckt = topCkt[cktName]
        G_nx = G_nx_dict[cktName]
        
        sizes = [len(c.devices) for c in ckt.allSubCkts]
        avg_size = sum(sizes) / len(sizes)

        G_nx_top = G_nx[ckt.name]
        G_deg = [d for _, d in G_nx_top.in_degree]
        avg_deg = sum(G_deg) / len(G_deg)
        print('{}: graph nodes {} edges {} avg_deg {} avg_size {}'.format(cktName, G_nx_top.number_of_nodes(), G_nx_top.number_of_edges(), avg_deg, avg_size))
        # nx.draw_networkx(G_nx)
        # plt.show()
        ckt.avg_indeg = int(avg_deg)
        ckt.avg_size = int(avg_size)
        G_dgl_dict[cktName] = initFeature(G_nx_top, ckt)

    if para.load_model != '':
        model = torch.load(para.load_model)
    else:
        model = train(G_dgl_dict, para)
        if para.save_model != '':
            torch.save(model, para.save_model)
    # print(model.state_dict())

    node_embeddings = inference(G_dgl_dict, model)
    # for cktName, g in G_dgl_dict.items():
        # node_embeddings[cktName] = g.ndata['feat']
    setTrainedDevFeature(topCkt, node_embeddings)
    embedSubCktFeature(topCkt, G_nx_dict)

    print(node_embeddings['ADC_CORE'][0])

    #####################################################
    # Compute results
    #####################################################
    sym_ans = init_sym(para)
    s3det_pairs = init_s3det_pairs(para)

    use_dev = {'adc1', 'adc2'}
    # use_dev = set()
    ignore  = {'adc1', 'adc2'}
    result = dict()
    for th in list(np.linspace(1, 1, 1)):
        print('Computing matching with threshold {}'.format(th))
        match_ckt = computeMatching(topCkt, use_dev, ignore, th, th)
        result[th] = computeAccuracyS3det(topCkt, s3det_pairs, match_ckt, sym_ans)
        # for th2 in list(np.linspace(0.9, 1, 101)):
            # print('Computing matching with threshold {} {}'.format(th, th2))
            # match_ckt = computeMatching(topCkt, use_dev, ignore, th, th2)
            # result[(th, th2)] = computeAccuracyS3det(topCkt, s3det_pairs, match_ckt, sym_ans)
            # result[th] = computeAccuracy(topCkt, use_dev, match_ckt, sym_ans)

    # with open(para.load_model + '_res.pickle', 'wb') as f:
        # pickle.dump(result, f)
    for th, res in result.items():
        print('Threshold {}'.format(th))
        for key, val in res.items():
            print('  {:<15} precision: {:<20} recall: {:<20} accuracy: {:<20} FPR: {:<22} F1: {:<22} MCC: {:<22}'.format(
                key,
                val['precision'],
                val['recall'],
                val['accuracy'],
                val['FPR'],
                val['F1'],
                val['MCC']))
        print()

    if para.s3det != None:
        sym_s3det = init_s3det(para)
        # res_s3det = computeAccuracy(topCkt, use_dev, sym_s3det, sym_ans)
        res_s3det = computeAccuracyS3det(topCkt, s3det_pairs, sym_s3det, sym_ans)
        print('S3DET')
        for key, val in res_s3det.items():
            # print(val['true_pos'] + val['false_pos'] + val['true_neg'] + val['false_neg'])
            print('  {:<15} precision: {:<20} recall: {:<20} accuracy: {:<20} FPR: {:<22} F1: {:<22} MCC: {:<22}'.format(
                key,
                val['precision'],
                val['recall'],
                val['accuracy'],
                val['FPR'],
                val['F1'],
                val['MCC']))
        print()


if __name__ == "__main__":
    main()
