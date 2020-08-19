import logging
import numpy as np
import networkx as nx

import torch
import torch.nn as nn
import torch.nn.functional as F

import dgl
from dgl.nn.pytorch import GraphConv, GATConv, SAGEConv

class DotProductPredictor(nn.Module):
    def forward(self, graph, h):
        # h contains the node representations computed from the GNN above.
        with graph.local_scope():
            graph.ndata['h'] = h
            graph.apply_edges(dgl.function.u_dot_v('h', 'h', 'score'))
            return graph.edata['score']

class TrashNet(nn.Module):
    def __init__(self,
                 in_feats,
                 hid_feats,
                 out_feats,
                 dropout):
        super(TrashNet, self).__init__()
        self.sage = SAGEConv(in_feats=in_feats, out_feats=hid_feats, aggregator_type='mean')
        self.dropout = dropout
        self.pred = DotProductPredictor()

    def forward_(self, G, inputs):
        h = self.sage(G, inputs)
        h = F.relu(h)
        # h = F.dropout(h, self.dropout, training=self.training)
        h = self.sage(G, inputs)
        h = F.relu(h)
        return h

    def forward(self, G, neg_G, inputs):
        h = self.forward_(G, inputs)
        return self.pred(G, h), self.pred(neg_G, h)

