import logging
import numpy as np
import networkx as nx

import torch
import torch.nn as nn

import dgl

class TrashNet(nn.Module):
    def __init__(self, para):
        super(GGNet, self).__init__()
