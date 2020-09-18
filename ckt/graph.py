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

def build_ckt_dev(netlist, topCkt, subCkt, thisInst, name_prefix, level):
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
            print(thisInst)
            assert False

        dev.parentCkt = subCkt
        topCkt.add_device(dev)
        subCkt.add_device(dev)
        # print(dev)
        return

    # print(thisInst.pins)
    # ports = [k for k in ckt_nl.nets.keys()]
    # print(ports)
    # thisInst is subcircuit
    newSubCkt = SubCkt(name_prefix, thisInst.reference, level + 1)
    newSubCkt.parentCkt = subCkt
    subCkt.add_subCkt(newSubCkt)
    topCkt.add_subCkt_2(newSubCkt)
    for inst in ckt_nl.instances:
        build_ckt_dev(netlist, topCkt, newSubCkt, inst, name_prefix + '/' + inst.name, level + 1)

def build_net(netlist, subCkt, subNet, thisNet, thisInst, name_prefix):
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
            pin = subCkt.get_device_by_name(name_prefix).pins[id]
            if not pin.connected:
                pin.connected = True
                pin.net = subNet
                subNet.add_pin(pin)
        return

    # thisInst is subcircuit
    ports = [k for k in ckt_nl.nets.keys()]
    for i in range(len(thisInst.pins)):
        if thisNet.name == thisInst.pins[i]:
            # print(thisNet.name + ' ' + thisInst.name)
            net = ckt_nl.nets[ports[i]]
            # print(net.name)
            for inst in ckt_nl.instances:
                build_net(netlist, subCkt, subNet, net, inst, name_prefix + '/' + inst.name)

def flattenCkt(subCkt, devs):
    for dev in subCkt.devices:
        devs.append(dev)
    for ckt in subCkt.subCkts:
        flattenCkt(ckt, devs)

def build_graph(netlist):
    topCkt = None
    
    G_dict = {}
    G = nx.MultiDiGraph()
    
    # build nodes (devices)
    for ckt in netlist:
        if ckt.typeof == 'topcircuit':
            topCkt = Ckt(ckt.name, 0)
            for inst in ckt.instances:
                build_ckt_dev(netlist, topCkt, topCkt, inst, topCkt.name + '/' + inst.name, 0)
    # set devices for each subCkt
    for subCkt in topCkt.allSubCkts:
        allDevs = []
        flattenCkt(subCkt, allDevs)
        subCkt.devices = allDevs
        for i in range(len(allDevs)):
            dev = allDevs[i]
            subCkt.deviceName2Id[dev.name] = i
    # set level for all devices
    for dev in topCkt.devices:
        G.add_node(dev.idx, device=dev)
    
    # build edges (nets)
    for ckt in netlist:
        # print(ckt.typeof, ckt.name)
        if ckt.typeof == 'topcircuit':
            for net in ckt.nets.values():
                isPower = False
                if net.name in vss_set or net.name in vdd_set:
                    isPower = True
                topNet = Net(topCkt.name + '/' + net.name, isPower)
                for inst in ckt.instances:
                    build_net(netlist, topCkt, topNet, net, inst, topCkt.name + '/' + inst.name)
                if len(topNet.pins) > 0:
                    topCkt.add_net(topNet)
            # reverse topologcal order
            for i in range(len(topCkt.allSubCkts_level)):
                for subCkt in topCkt.allSubCkts_level[i]:
                    for ckt in netlist:
                        if ckt.typeof == 'subcircuit' and ckt.name == subCkt.type:
                            for net in ckt.nets.values():
                                isPower = False
                                if net.name in vss_set or net.name in vdd_set:
                                    isPower = True
                                subNet = Net(subCkt.name + '/' + net.name, isPower)
                                for inst in ckt.instances:
                                    build_net(netlist, subCkt, subNet, net, inst, subCkt.name + '/' + inst.name)
                                if len(subNet.pins) > 0:
                                    topCkt.add_net(subNet)
            # for net in topCkt.nets.values():
                # print(net.name, len(net.pins.keys()))
    
    # add subnets for each subCkt
    # for subCkt in topCkt.allSubCkts:
        # for net in topCkt.nets.values():
            # isPower = False
            # if net.name in vss_set or net.name in vdd_set:
                # isPower = True
            # subNet = Net(net.name + '/' + subCkt.name, isPower)
            # for dev in subCkt.devices:
                # for pin in dev.pins:
                    # if pin in net.pins.values():
                        # subNet.add_pin(pin)
            # if len(subNet.pins) > 0:
                # subCkt.add_net(subNet)
        # for dev in subCkt.devices:
            # for pin in dev.pins:
                # if pin.net not in subCkt.nets.values():
                    # subCkt.add_net(pin.net)
                # else:
                    # subCkt.nets[pin.net.name]
                
    
    for net in topCkt.nets.values():
        if not net.isPower:
            pins = list(net.pins.values())
            for i in range(len(pins)):
                if pins[i].type in ['bulk', 'passive_bulk']:
                    continue
                for j in range(len(pins)):
                    if pins[j].type in ['bulk', 'passive_bulk']:
                        continue
                    if i != j:
                        dev1, dev2 = pins[i].device, pins[j].device
                        assert dev1 in topCkt.devices
                        assert dev2 in topCkt.devices
                        if dev1.idx != dev2.idx:
                            in_type = pins[j].type
                            G.add_edge(dev1.idx, dev2.idx, in_type=in_type)

    
    G_dict[topCkt.name] = G
    # build subCkt graph
    for subCkt in topCkt.allSubCkts:
        subG = nx.MultiDiGraph()
        for dev in subCkt.devices:
            subG.add_node(dev.idx, device=dev)
        # for net in topCkt.nets.values():
            # if net.name == 'DAC_SWITCHES/net91':
                # print(net.name, net.pins.keys())
        # exit(0)
        for net in topCkt.nets.values():
            if not net.isPower:
                pins = list(net.pins.values())
                for i in range(len(pins)):
                    if pins[i].type in ['bulk', 'passive_bulk']:
                        continue
                    for j in range(len(pins)):
                        if pins[j].type in ['bulk', 'passive_bulk']:
                            continue
                        if i != j:
                            dev1, dev2 = pins[i].device, pins[j].device
                            if dev1 in subCkt.devices and dev2 in subCkt.devices:
                                # assert dev1 in subCkt.devices
                                # assert dev2 in subCkt.devices
                                if dev1.idx != dev2.idx:
                                    in_type = pins[j].type
                                    subG.add_edge(dev1.idx, dev2.idx, in_type=in_type)
        G_dict[subCkt.name] = subG
        # print(subCkt.name, subCkt.type, subG.number_of_edges())
            

        # print(subCkt.name + ' ' + str(subCkt.level) + ' ' + str(len(subCkt.devices)))
    # exit(0)
    return G_dict, topCkt
    


