import logging
import numpy as np
import networkx as nx

import torch
import torch.nn as nn

import dgl
from dgl.nn.pytorch import GraphConv, GATConv, SAGEConv, GatedGraphConv

class DotProductPredictor(nn.Module):
    def forward(self, graph, h):
        # h contains the node representations computed from the GNN above.
        with graph.local_scope():
            graph.ndata['h'] = h
            graph.apply_edges(dgl.function.u_dot_v('h', 'h', 'score'))
            return graph.edata['score']

class TrashNet(nn.Module):
    def __init__(self,in_feats):
        super(TrashNet, self).__init__()
        self.sage = SAGEConv(in_feats=in_feats, out_feats=30, aggregator_type='mean')
        self.sage2 = SAGEConv(in_feats=30, out_feats=30, aggregator_type='mean')
        self.ggcn = GatedGraphConv(in_feats=in_feats, out_feats=30, n_steps=1, n_etypes=3)
        self.ggcn2 = GatedGraphConv(in_feats=30, out_feats=30, n_steps=1, n_etypes=3)
        self.sigmoid = nn.Sigmoid()
        self.relu = nn.ReLU()
        self.lrelu = nn.LeakyReLU()

        self.dropout = nn.Dropout(p=0.5)
        self.pred = DotProductPredictor()

    def forward_(self, G, inputs):
        # h = self.sage(G, inputs)
        h = self.ggcn(G, inputs, G.edata['type'])
        h = self.relu(h)
        # h = self.sigmoid(h)
        # h = self.dropout(h)
        # h = self.sage2(G, h)
        h = self.ggcn2(G, h, G.edata['type'])
        # h = self.relu(h)
        # h = self.sigmoid(h)
        # h = self.dropout(h)
        return h

    def forward(self, G, neg_G, inputs):
        h = self.forward_(G, inputs)
        return self.pred(G, h), self.pred(neg_G, h)

