
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


def embedSubCktFeature(topCkt, G_nx_dict, node_embeddings):
    for subCkt in topCkt.allSubCkts:
        subG = G_nx_dict[subCkt.name]
        if subG.number_of_nodes() > 0 and subG.number_of_edges() > 0:
            # print('Graph nodes {} edges {}'.format(subG.number_of_nodes(), subG.number_of_edges()))
            feats = []
            for dev in subCkt.devices:
                feats.append(node_embeddings[dev.idx])
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
            feat_cat = torch.cat([node_embeddings[sorted_pg[i][0]] for i in range(num_cat)])
            subCkt.feat = feat_cat
        if subG.number_of_edges() == 0:
            print(subCkt.name, subCkt.type, subG.number_of_nodes())

    return

def main():
    para = params_setup()
    netlist = init_netlist(para)
    # sym = init_sym(para)
       
    # print(sym)
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
    
    embedSubCktFeature(topCkt, G_nx_dict, node_embeddings)

    n1 = node_embeddings[topCkt.get_device_by_name('ADC_CORE/xi3/xi1/xi1<3>/xi0/m0').idx]
    n2 = node_embeddings[topCkt.get_device_by_name('ADC_CORE/xi3/xi1/xi1<5>/xm10').idx]
    # n1 = node_embeddings[topCkt.get_device_by_name('ADC_CORE/xi11/xm0').idx]
    # n2 = node_embeddings[topCkt.get_device_by_name('ADC_CORE/xi12/xm0').idx]
    print(n1)
    print(n2)
    cos = nn.CosineSimilarity(dim=0, eps=1e-8)
    print(cos(n1, n2))

if __name__ == "__main__":
    main()
