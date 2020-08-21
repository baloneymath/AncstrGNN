
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


def embedSubCktFeature(subCkt, G_dgl, node_embeddings):

    return

def main():
    para = params_setup()
    netlist = init_netlist(para)
    # sym = init_sym(para)
    
    # print(sym)
    # return

    G_nx, topCkt = build_graph(netlist)


    # printCkt(topCkt, '|-', showDev=True)
    # return

    G_dgl = dgl.DGLGraph(G_nx)
    print('Graph nodes {} edges {}'.format(G_dgl.number_of_nodes(), G_dgl.number_of_edges()))
    # nx.draw_networkx(G_nx)
    # plt.show()
    
    initFeature(G_dgl, topCkt)
    node_embeddings = train(G_dgl, para)
    

    n1 = node_embeddings[topCkt.get_device_by_name('ADC_CORE/xi3/xi1/xi1<3>/xi0/m0').idx]
    n2 = node_embeddings[topCkt.get_device_by_name('ADC_CORE/xi3/xi1/xi1<5>/xi0/m0').idx]
    print(n1)
    print(n2)
    cos = nn.CosineSimilarity(dim=0, eps=1e-6)
    print(cos(n1, n2))

if __name__ == "__main__":
    main()
