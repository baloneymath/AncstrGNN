import dgl
import torch
import torch.nn as nn

from ckt.ckt import *
from model.TrashNet import TrashNet


def initFeature(G_nx, topCkt):
    dev_list = []
    dev_list.extend(list(nmos_set))
    dev_list.extend(list(pmos_set))
    dev_list.extend(list(capacitor_set))
    dev_list.extend(list(resistor_set))
    feat = []
    for i in range(G_nx.number_of_nodes()):
        # print(G.in_edges(i))
        # print(topCkt.devices[i].param)
        dev = topCkt.devices[i]
        # f = [0.] * 6
        # if dev.isNmos():
            # f[0] = 1.
        # elif dev.isPmos():
            # f[1] = 1.
        # elif dev.isCap():
            # f[2] = 1.
        # elif dev.isRes():
            # f[3] = 1.
        # else:
            # assert False
        # f[4] = float(dev.param['l']) / 1e-7
        # f[5] = float(dev.param['w']) / 1e-7
        feat_len = len(dev_list) + 2
        f = [0.] * feat_len
        onehot = dev_list.index(dev.type)
        f[onehot] = 1.
        f[-2] = float(dev.param['l']) / 1e-7
        f[-1] = float(dev.param['w']) / 1e-7
        feat.append(f)
    G_dgl = dgl.DGLGraph(G_nx)
    G_dgl.ndata['feat'] = torch.tensor(feat)
    
    etype = []
    for e, e_data in G_nx.edges.items():
        if e_data['in_type'] == 'gate':
            etype.append(0)
        elif e_data['in_type'] == 'drain':
            etype.append(1)
        elif e_data['in_type'] == 'source':
            etype.append(2)
    G_dgl.edata['type'] = torch.tensor(etype)
    return G_dgl

def construct_negative_graph(G, k):
    src, dst = G.edges()

    neg_src = src.repeat_interleave(k)
    neg_dst = torch.randint(0, G.number_of_nodes(), (len(src) * k,))
    return dgl.graph((neg_src, neg_dst), num_nodes=G.number_of_nodes())

def compute_loss(pos_score, neg_score):
    n_edges = pos_score.shape[0]
    # print(neg_score.view(n_edges, -1).shape)
    # print(pos_score.unsqueeze(1).shape)
    # Margin loss
    # return (1 - neg_score.view(n_edges, -1) + pos_score.unsqueeze(1)).clamp(min=0).mean()
    # cross entropy loss
    eps = 1e-7
    pos = torch.sigmoid(pos_score.unsqueeze(1))
    neg = torch.sigmoid(neg_score.view(n_edges, -1))
    return (-torch.log(eps + pos) - torch.log(eps + 1 - neg)).mean()
    

def train(G, para):

    if torch.cuda.is_available():  
      dev = "cuda:0" 
    else:  
      dev = "cpu"

    device = torch.device(dev)


    node_features = G.ndata['feat']
    n_features = G.ndata['feat'].shape[1] # number of features
    k = 5

    model = TrashNet(in_feats=n_features)
    opt = torch.optim.Adam(model.parameters())

    # assign to device
    node_features = node_features.to(device)
    model = model.to(device)


    for epoch in range(250):
        neg_G = construct_negative_graph(G, k)
        pos_score, neg_score = model(G, neg_G, node_features)
        loss = compute_loss(pos_score, neg_score)
        opt.zero_grad()
        loss.backward()
        opt.step()
        print('epoch: {}, loss: {}'.format(epoch, loss.item()))

    return model.forward_(G, node_features)
