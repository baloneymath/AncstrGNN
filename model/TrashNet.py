import logging
import numpy as np
import networkx as nx

import torch
import torch.nn as nn

import dgl
from dgl.nn.pytorch import GraphConv, GATConv, SAGEConv

class TrashNet(nn.Module):
    def __init__(self,
                 in_feats,
                 hid_feats,
                 out_feats):
        super().__init__()
        self.conv1 = SAGEConv(in_feats=in_feats, out_feats=hid_feats, aggregator_type='mean')
        self.conv2 = SAGEConv(in_feats=hid_feats, out_feats=hid_feats, aggregator_type='mean')
        self.conv3 = SAGEConv(in_feats=hid_feats, out_feats=out_feats, aggregator_type='mean')

    def forward(self, graph, inputs):
        h = self.conv1(graph, inputs)
        h = nn.LeakyReLU(h)
        h = self.conv2(graph, h)
        h = nn.LeakyReLU(h)
        h = self.conv3(graph, h)
        return h
