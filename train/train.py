import dgl
import torch
import torch.nn as nn
from torch.utils.data import DataLoader

from ckt.ckt import *
from train.TrashNet import TrashNet


def initFeature(G_nx, topCkt):
    dev_list = []
    dev_list.extend(list(nmos_set))
    dev_list.extend(list(pmos_set))
    dev_list.extend(list(capacitor_set))
    dev_list.extend(list(resistor_set))
    feat = []
    # min_l = 1000000.
    # min_w = 1000000.
    # min_h = 1000000.
    # max_l = -1000.
    # max_w = -1000.
    # max_h = -1000.
    for i in range(G_nx.number_of_nodes()):
        # print(G.in_edges(i))
        # print(topCkt.allDevices[i].param)
        dev = topCkt.allDevices[i]
        feat_len = len(dev_list) + 3
        f = [0.] * feat_len
        onehot = dev_list.index(dev.type)
        f[onehot] = 1
        if dev.isNmos() or dev.isPmos():
            f[-3] = float(dev.param['l']) / 1e-7 
            f[-2] = float(dev.param['w']) / 1e-7 
            if 'nfin' in dev.param:
                f[-2] = f[-2] * float(dev.param['nfin'])
            f[-1] = 1. 
        elif dev.isCap():
            if dev.type == 'crtmom':
                f[-3] = float(dev.param['nv']) * (float(dev.param['w']) + float(dev.param['s'])) / 1e-7 
                f[-2] = float(dev.param['nh']) * (float(dev.param['w']) + float(dev.param['s'])) / 1e-7 
                f[-1] = (float(dev.param['spm']) - float(dev.param['stm'])) 
            elif dev.type == 'cfmom' or 'cfmom_2t':
                f[-3] = float(dev.param['lr']) / 1e-7 
                f[-2] = float(dev.param['nr']) * (float(dev.param['w']) + float(dev.param['s'])) / 1e-7 
                f[-1] = (float(dev.param['spm']) - float(dev.param['stm']))
        elif dev.isRes():
            if dev.type == 'rppolywo_m':
                f[-3] = float(dev.param['lr']) / 1e-7 
                f[-2] = float(dev.param['wr']) / 1e-7
                f[-1] = 1. 
            elif dev.type == 'rppolywo':
                f[-3] = float(dev.param['l']) / 1e-7 
                f[-2] = float(dev.param['w']) / 1e-7 
                f[-1] = 1.
            elif dev.type == 'res':
                # assert False
                f[-3] = 0.
                f[-2] = 0.
                f[-1] = 1.
        # f.append(float(dev.in_deg) / 10)
        feat.append(f)
        # min_l = min(min_l, f[-3])
        # min_w = min(min_w, f[-2])
        # min_h = min(min_h, f[-1])
        # max_l = max(max_l, f[-3])
        # max_w = max(max_w, f[-2])
        # max_h = max(max_h, f[-1])
    # print(min_l, min_w, min_h)
    # print(max_l, max_w, max_h)
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
        else: # to passive devices
            assert e_data['in_type'] == 'passive'
            etype.append(3)
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
    

def train(G_dgl_dict, para):
    
    if torch.cuda.is_available():
        dev = "cuda:0" 
    else:  
        dev = "cpu"

    device = torch.device(dev)

    graphs = []
    for cktName, g in G_dgl_dict.items():
        # if cktName == 'CTDTDSM_V3':
            # continue
        graphs.append(g)
    G = dgl.batch(graphs)

    node_features = G.ndata['feat']
    n_nodes = G.ndata['feat'].shape[0]
    n_features = G.ndata['feat'].shape[1] # number of features
    k = 5

    model = TrashNet(in_feats=n_features)
    opt = torch.optim.Adam(model.parameters())

    # assign to device
    node_features = node_features.to(device)
    model = model.to(device)

    model.train()

    data_loader = DataLoader(node_features, batch_size=n_nodes, shuffle=True)

    for epoch in range(600):
        for iter, feats in enumerate(data_loader):
            neg_G = construct_negative_graph(G, k)
            pos_score, neg_score = model(G, neg_G, feats)
            loss = compute_loss(pos_score, neg_score)
            opt.zero_grad()
            loss.backward()
            opt.step()
        print('epoch: {}, loss: {}'.format(epoch+1, loss.item()))

    return model

def inference(G_dgl_dict, model):
    model.eval()

    if next(model.parameters()).is_cuda:
        dev = "cuda:0"
    else:
        dev = "cpu"
    device = torch.device(dev)

    node_embeddings = dict()
    for key, val in G_dgl_dict.items():
        node_embeddings[key] = model.forward_(val, val.ndata['feat'].to(device))

    return node_embeddings
