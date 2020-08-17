import dgl
import torch
import torch.nn as nn

from model.TrashNet import TrashNet


def train():
    return


def extractFeature(G, topCkt):
    for i in range(G.number_of_nodes()):
        # print(G.in_edges(i))
        # print(topCkt.devices[i].param)
        dev = topCkt.devices[i]

    return G
