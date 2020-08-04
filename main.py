#!/usr/bin/env python3

from util.config import params_setup, logging_setup
from netlist import netlist, parse_netlist
from sym import parse_sym
from ckt.graph import build_graph
from train.train import *

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

def main():
    para = params_setup()
    netlist = init_netlist(para)
    # sym = init_sym(para)
    G, topCkt = build_graph(netlist)


if __name__ == "__main__":
    main()
