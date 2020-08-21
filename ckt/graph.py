import networkx as nx
from ckt.ckt import *

def isDevice(inst):
    if str(inst.reference) in nmos_set or \
       str(inst.reference) in pmos_set or \
       str(inst.reference) in capacitor_set or \
       str(inst.reference) in resistor_set:
        return True
    return False

def isNmos(inst):
    if inst.reference in nmos_set:
        return True
    return False

def isPmos(inst):
    if inst.reference in pmos_set:
        return True
    return False

def isCap(inst):
    if inst.reference in capacitor_set:
        return True
    return False

def isRes(inst):
    if inst.reference in resistor_set:
        return True
    return False

def isThreeTerm(inst):
    if inst.reference in three_term_set:
        return True
    return False

def build_graph_node(G, netlist, topCkt, subCkt, thisInst, name_prefix, level):
    ckt_nl = None
    for ckt in netlist:
        if ckt.name == thisInst.reference:
            ckt_nl = ckt

    # thisInst is device
    if ckt_nl == None:
        dev = Device(name_prefix, thisInst.reference, thisInst.parameters, level + 1)
        if isNmos(thisInst) or isPmos(thisInst):
            drain   = Pin(dev.name + '.d', dev, 'drain')
            gate    = Pin(dev.name + '.g', dev, 'gate')
            source  = Pin(dev.name + '.s', dev, 'source')
            bulk    = Pin(dev.name + '.b', dev, 'bulk')
            dev.add_pin(drain)
            dev.add_pin(gate)
            dev.add_pin(source)
            dev.add_pin(bulk)
        elif isCap(thisInst) or isRes(thisInst):
            t1 = Pin(dev.name + '.t1', dev, 'passive')
            t2 = Pin(dev.name + '.t2', dev, 'passive')
            dev.add_pin(t1)
            dev.add_pin(t2)
            if isThreeTerm(thisInst):
                b = Pin(dev.name + '.b', dev, 'passive_bulk')
                dev.add_pin(b)
        else:
            assert False

        topCkt.add_device(dev)
        subCkt.add_device(dev)
        # G.add_node(dev.name, device=dev)
        # print(dev)
        return

    # print(thisInst.pins)
    # ports = [k for k in ckt_nl.nets.keys()]
    # print(ports)
    # thisInst is subcircuit
    newSubCkt = SubCkt(name_prefix, thisInst.reference, level + 1)
    subCkt.add_subCkt(newSubCkt)
    topCkt.add_subCkt_2(newSubCkt)
    for inst in ckt_nl.instances:
        build_graph_node(G, netlist, topCkt, newSubCkt, inst, name_prefix + '/' + inst.name, level + 1)

def build_graph_edge(G, netlist, topCkt, topNet, thisNet, thisInst, name_prefix):
    ckt_nl = None
    for ckt in netlist:
        if ckt.name == thisInst.reference:
            ckt_nl = ckt

    # thisInst is device
    if ckt_nl == None:
        ids = []
        for i in range(len(thisInst.pins)):
            if thisNet.name == thisInst.pins[i]:
                ids.append(i)
        for id in ids:
            topNet.add_pin(topCkt.get_device_by_name(name_prefix).pins[id])
        return

    # thisInst is subcircuit
    ports = [k for k in ckt_nl.nets.keys()]
    for i in range(len(thisInst.pins)):
        if thisNet.name == thisInst.pins[i]:
            # print(thisNet.name + ' ' + thisInst.name)
            net = ckt_nl.nets[ports[i]]
            # print(net.name)
            for inst in ckt_nl.instances:
                build_graph_edge(G, netlist, topCkt, topNet, net, inst, name_prefix + '/' + inst.name)

def flattenCkt(subCkt, devs):
    for dev in subCkt.devices:
        devs.append(dev)
    for ckt in subCkt.subCkts:
        flattenCkt(ckt, devs)

def build_graph(netlist):
    topCkt = None
    G = nx.MultiDiGraph()
    
    for ckt in netlist:
        if ckt.typeof == 'topcircuit':
            topCkt = Ckt(ckt.name, 0)
            for inst in ckt.instances:
                build_graph_node(G, netlist, topCkt, topCkt, inst, topCkt.name + '/' + inst.name, 0)
            for net in ckt.nets.values():
                topNet = Net(net.name)
                topCkt.add_net(topNet)
                for inst in ckt.instances:
                    build_graph_edge(G, netlist, topCkt, topNet, net, inst, topCkt.name + '/' + inst.name)
    
    for dev in topCkt.devices:
        G.add_node(dev.idx, device=dev)
    
    for net in topCkt.nets.values():
        if not net.isPower():
            pins = list(net.pins.values())
            for i in range(len(pins)):
                if (pins[i].type in ['bulk', 'passive_bulk']):
                    continue
                for j in range(len(pins)):
                    if (pins[j].type in ['bulk', 'passive_bulk']):
                        continue
                    if i != j:
                        dev1, dev2 = pins[i].device, pins[j].device
                        if dev1.idx != dev2.idx:
                            in_type = pins[j].type
                            G.add_edge(dev1.idx, dev2.idx, in_type=in_type)

    # set devices for each subCkt
    for subCkt in topCkt.allSubCkts:
        allDevs = []
        flattenCkt(subCkt, allDevs)
        subCkt.devices = allDevs
        for i in range(len(allDevs)):
            dev = allDevs[i]
            subCkt.deviceName2Id[dev.name] = i

        # print(subCkt.name + ' ' + str(subCkt.level) + ' ' + str(len(subCkt.devices)))
    return G, topCkt
    


