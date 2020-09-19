
clk_set = {"clk", "clksb", "clks_boost", "clkb", "clkbo"}
vss_set = {"gnd", "vss", "vss_sub", "vrefn", "vrefnd", "avss", "dvss", "vss_d"}
vdd_set = {"vdd", "vdd_and", "vdd_c", "vdd_comp", "vdd_gm", "vddd", "vdda", "veld", "avdd", "vrefp", "vrefnp", "avdd_sar", "vdd_ac", "dvdd", "vdd_int", "vddac", "vdd_d"}

# nmos_set = {"nmos", "nch", "nch_na", "nch_mac", "nch_lvt", "nch_lvt_mac", "nch_25_mac", "nch_na25_mac", "nch_hvt_mac", "nch_25ud18_mac"}
# pmos_set = {"pmos", "pch", "pch_mac", "pch_lvt", "pch_lvt_mac", "pch_25_mac", "pch_na25_mac", "pch_hvt_mac", "nch_25ud18_mac"}
nmos_set = {"nch", "nch_mac", "nch_lvt", "nch_lvt_mac", "nch_hvt_mac"}
pmos_set = {"pch", "pch_mac", "pch_lvt", "pch_lvt_mac", "pch_hvt_mac"}

# capacitor_set = {"cfmom", "cfmom_2t", "crtmom_2t", "crtmom"}
# resistor_set = {"rppoly", "rppoly_m", "rppolywo_m", "rppolywo", "rppolyl"}
capacitor_set = {"cfmom", "crtmom", "cfmom_2t"}
resistor_set = {"rppolywo_m", "rppolywo"}

three_term_set = {'cfmom', 'crtmom', 'rppolywo_m'}

class CktObj:
    def __init__(self, name):
        self.name = name # str

class Net(CktObj):
    def __init__(self, name, isPower):
        CktObj.__init__(self, name)
        self.type = 'signal'
        if name in vss_set:
            self.type = 'vss'
        elif name in vdd_set:
            self.type= 'vdd'
        elif name in clk_set:
            self.type = 'clk'
        self.pins = {}
        self.isPower = isPower
    def add_pin(self, pin):
        self.pins[pin.name] = pin

class Pin(CktObj):
    def __init__(self, name, device, type):
        CktObj.__init__(self, name)
        self.device = device
        self.net = None
        self.type = type
        self.connected = False
        self.connectedPins = {}

class Device(CktObj):
    def __init__(self, name, type, param, level):
        CktObj.__init__(self, name)
        self.type = type
        self.param = param
        self.level = level
        self.pins = []
        self.idx = -1 # idx in Ckt.devices
        self.feat = None # trained feature
        self.parentCkt = None
        self.name_suffix = name.split('/')[-1]
    def __str__(self):
        return self.name + ' ' + self.type
    def add_pin(self, pin):
        self.pins.append(pin)
    def isNmos(self):
        return self.type in nmos_set
    def isPmos(self):
        return self.type in pmos_set
    def isMos(self):
        return self.isNmos() or self.isPmos()
    def isCap(self):
        return self.type in capacitor_set
    def isRes(self):
        return self.type in resistor_set
    def isPassive(self):
        return self.type in capacitor_set or self.type in resistor_set

class SubCkt(object):
    def __init__(self, name, type, level):
        self.name = name
        self.type = type
        self.level = level # hierarchy level
        self.idx = -1 # idx in Ckt.subCkts
        self.idx2 = -1 # idx in Ckt.allSubCkts
        self.devices = [] # lowest level transistors
        self.deviceName2Id = {}
        self.subCkts = []
        self.subCktName2Id = {}
        # self.nets = {}
        self.feat = None # trained feature
        self.parentCkt = None
        self.name_suffix = name.split('/')[-1]
    def get_device_by_name(self, name):
        return self.devices[self.deviceName2Id[name]]
    def add_device(self, device):
        if device.name not in self.deviceName2Id.keys():
            self.deviceName2Id[device.name] = len(self.devices)
            self.devices.append(device)
    def add_subCkt(self, subCkt):
        if subCkt.name not in self.subCktName2Id.keys():
            self.subCktName2Id[subCkt.name] = len(self.subCkts)
            self.subCkts.append(subCkt)
    # def add_net(self, net):
        # self.nets[net.name] = net

class Ckt(object):
    def __init__(self, name, level):
        self.name = name
        self.type = 'TOP'
        self.level = level
        self.nets = {}
        self.devices = [] # all lowest level transistors
        self.deviceName2Id = {}
        self.subCkts = [] # hierarchy structured subckts
        self.subCktName2Id = {}
        self.allSubCkts = [] # all subckts (including ckts withdifferent hierarchy level)
        self.allSubCktName2Id = {} 
        
        self.max_level = 0
        self.devices_level = []
        self.allSubCkts_level = []

    def add_net(self, net):
        self.nets[net.name] = net
    def add_device(self, device):
        if device.name not in self.deviceName2Id.keys():
            device.idx = len(self.devices)
            self.deviceName2Id[device.name] = len(self.devices)
            self.devices.append(device)
            if device.level >= self.max_level:
                self.max_level = device.level
                while len(self.devices_level) <= self.max_level + 1:
                    self.devices_level.append([])
            self.devices_level[device.level].append(device)

    def get_device_by_name(self, name):
        return self.devices[self.deviceName2Id[name]]
    def hasPowerNet(self):
        for net in self.nets:
            if net.type in ['vss', 'vdd']:
                return True
        return False
    def hasSignalNet(self):
        for net in self.nets:
            if net.type in ['signal', 'clk']:
                return True
        return False
    def add_subCkt(self, subCkt):
        if subCkt.name not in self.subCktName2Id.keys():
            subCkt.idx = len(self.subCkts)
            self.subCktName2Id[subCkt.name] = len(self.subCkts)
            self.subCkts.append(subCkt)
    def add_subCkt_2(self, subCkt):
        if subCkt.name not in self.allSubCktName2Id.keys():
            subCkt.idx2 = len(self.allSubCkts)
            self.allSubCktName2Id[subCkt.name] = len(self.allSubCkts)
            self.allSubCkts.append(subCkt)
            if subCkt.level >= self.max_level:
                self.max_level = subCkt.level
                while len(self.allSubCkts_level) <= self.max_level + 1:
                    self.allSubCkts_level.append([])
            self.allSubCkts_level[subCkt.level].append(subCkt)
