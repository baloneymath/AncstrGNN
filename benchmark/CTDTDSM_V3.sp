** Generated for: hspiceD
** Generated on: Mar  4 19:55:57 2019
** Design library name: CTDTDSM_NSSAR
** Design cell name: CTDTDSM_V3
** Design view name: schematic


** .TEMP 25.0
** .OPTION
** +    ARTIST=2
** +    INGOLD=2
** +    PARHIER=LOCAL
** +    PSF=2
** .LIB "/usr/local/packages/tsmc_40/pdk/models/hspice/toplevel.l" top_tt

** Library name: CTDTDSM_NSSAR
** Cell name: INVX2
** View name: schematic
** terminal mapping: I	= i
**                   VDD	= vdd
**                   VSS	= vss
**                   ZN	= zn
.subckt type:digital INVX2 i vdd vss zn

** nch_lvt_mac Instance M1 = hspiceD device xm1
xm1 zn i vss vss nch_lvt_mac l=40e-9 w=310e-9 multi=1 nf=2 sd=140e-9 ad=21.7e-15 as=34.1e-15 pd=590e-9 ps=1.06e-6 nrd=129.71e-3 nrs=129.71e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=1 globalflag=0 totalflag=0

** pch_lvt_mac Instance M0 = hspiceD device xm0
xm0 zn i vdd vdd pch_lvt_mac l=40e-9 w=410e-9 multi=1 nf=2 sd=140e-9 ad=28.7e-15 as=45.1e-15 pd=690e-9 ps=1.26e-6 nrd=228.243e-3 nrs=228.243e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=1 globalflag=0 totalflag=0
.ends INVX2
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: INVX4
** View name: schematic
** terminal mapping: I	= i
**                   VDD	= vdd
**                   VSS	= vss
**                   ZN	= zn
.subckt type:digital INVX4 i vdd vss zn

** nch_lvt_mac Instance M1 = hspiceD device xm1
xm1 zn i vss vss nch_lvt_mac l=40e-9 w=620e-9 multi=1 nf=4 sd=140e-9 ad=43.4e-15 as=55.8e-15 pd=1.18e-6 ps=1.65e-6 nrd=66.169e-3 nrs=66.169e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M0 = hspiceD device xm0
xm0 zn i vdd vdd pch_lvt_mac l=40e-9 w=820e-9 multi=1 nf=4 sd=140e-9 ad=57.4e-15 as=73.8e-15 pd=1.38e-6 ps=1.95e-6 nrd=111.465e-3 nrs=111.465e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0
.ends INVX4
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: DFF_TSPC_V2
** View name: schematic
** terminal mapping: CLK	= clk
**                   D	= d
**                   DVDD	= dvdd
**                   DVSS	= dvss
**                   Q	= q
.subckt type:digital DFF_TSPC_V2 clk d dvdd dvss q

** nch_lvt_mac Instance M20 = hspiceD device xm20
xm20 net018 net09 dvss dvss nch_lvt_mac l=40e-9 w=310e-9 multi=1 nf=2 sd=140e-9 ad=21.7e-15 as=34.1e-15 pd=590e-9 ps=1.06e-6 nrd=129.71e-3 nrs=129.71e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=1

** nch_lvt_mac Instance M19 = hspiceD device xm19
xm19 net012 clk net018 dvss nch_lvt_mac l=40e-9 w=310e-9 multi=1 nf=2 sd=140e-9 ad=21.7e-15 as=34.1e-15 pd=590e-9 ps=1.06e-6 nrd=129.71e-3 nrs=129.71e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=1

** nch_lvt_mac Instance M16 = hspiceD device xm16
xm16 q net012 dvss dvss nch_lvt_mac l=40e-9 w=155e-9 multi=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=249.512e-3 nrs=249.512e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=1

** nch_lvt_mac Instance M0 = hspiceD device xm0
xm0 net13 d dvss dvss nch_lvt_mac l=40e-9 w=155e-9 multi=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=249.512e-3 nrs=249.512e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=1

** nch_lvt_mac Instance M1 = hspiceD device xm1
xm1 net019 clk dvss dvss nch_lvt_mac l=40e-9 w=310e-9 multi=1 nf=2 sd=140e-9 ad=21.7e-15 as=34.1e-15 pd=590e-9 ps=1.06e-6 nrd=129.71e-3 nrs=129.71e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=1

** nch_lvt_mac Instance M10 = hspiceD device xm10
xm10 net09 net13 net019 dvss nch_lvt_mac l=40e-9 w=310e-9 multi=1 nf=2 sd=140e-9 ad=21.7e-15 as=34.1e-15 pd=590e-9 ps=1.06e-6 nrd=129.71e-3 nrs=129.71e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=1

** pch_lvt_mac Instance M17 = hspiceD device xm17
xm17 q net012 dvdd dvdd pch_lvt_mac l=40e-9 w=310e-9 multi=1 nf=2 sd=140e-9 ad=21.7e-15 as=34.1e-15 pd=590e-9 ps=1.06e-6 nrd=172.574e-3 nrs=172.574e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=1

** pch_lvt_mac Instance M18 = hspiceD device xm18
xm18 net012 net09 dvdd dvdd pch_lvt_mac l=40e-9 w=310e-9 multi=1 nf=2 sd=140e-9 ad=21.7e-15 as=34.1e-15 pd=590e-9 ps=1.06e-6 nrd=172.574e-3 nrs=172.574e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=1

** pch_lvt_mac Instance M4 = hspiceD device xm4
xm4 net09 clk dvdd dvdd pch_lvt_mac l=40e-9 w=310e-9 multi=1 nf=2 sd=140e-9 ad=21.7e-15 as=34.1e-15 pd=590e-9 ps=1.06e-6 nrd=172.574e-3 nrs=172.574e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=1

** pch_lvt_mac Instance M5 = hspiceD device xm5
xm5 net7 d dvdd dvdd pch_lvt_mac l=40e-9 w=310e-9 multi=1 nf=2 sd=140e-9 ad=21.7e-15 as=34.1e-15 pd=590e-9 ps=1.06e-6 nrd=172.574e-3 nrs=172.574e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=1

** pch_lvt_mac Instance M9 = hspiceD device xm9
xm9 net13 clk net7 dvdd pch_lvt_mac l=40e-9 w=310e-9 multi=1 nf=2 sd=140e-9 ad=21.7e-15 as=34.1e-15 pd=590e-9 ps=1.06e-6 nrd=172.574e-3 nrs=172.574e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=1
.ends DFF_TSPC_V2
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: BUF22444
** View name: schematic
** terminal mapping: DVDD	= dvdd
**                   DVSS	= dvss
**                   IN	= in
**                   OUT	= out
**                   OUTB	= outb
**                   OUTBB	= outbb
.subckt type:digital BUF22444 dvdd dvss in out outb outbb

** INVX2 Instance I0 = hspiceD device xi0
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi0 net21 dvdd dvss net07 INVX2

** INVX2 Instance I184 = hspiceD device xi184
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi184 in dvdd dvss net21 INVX2

** INVX4 Instance I187 = hspiceD device xi187
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi187 outb dvdd dvss out INVX4

** INVX4 Instance I185 = hspiceD device xi185
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi185 net07 dvdd dvss outb INVX4

** INVX4 Instance I186 = hspiceD device xi186
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi186 out dvdd dvss outbb INVX4
.ends BUF22444
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: LOGIC_DOUT_V2
** View name: schematic
** terminal mapping: CLK	= clk
**                   D<3>	= d<3>
**                   D<2>	= d<2>
**                   D<1>	= d<1>
**                   D<0>	= d<0>
**                   DOE<3>	= doe<3>
**                   DOE<2>	= doe<2>
**                   DOE<1>	= doe<1>
**                   DOE<0>	= doe<0>
**                   DOEB<3>	= doeb<3>
**                   DOEB<2>	= doeb<2>
**                   DOEB<1>	= doeb<1>
**                   DOEB<0>	= doeb<0>
**                   DOUT<3>	= dout<3>
**                   DOUT<2>	= dout<2>
**                   DOUT<1>	= dout<1>
**                   DOUT<0>	= dout<0>
**                   VDD	= vdd
**                   VSS	= vss
.subckt type:digital LOGIC_DOUT_V2 clk d<3> d<2> d<1> d<0> doe<3> doe<2> doe<1> doe<0> doeb<3> doeb<2> doeb<1> doeb<0> dout<3> dout<2> dout<1> dout<0> vdd vss

** INVX4 Instance I3 = hspiceD device xi3
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi3 net10 vdd vss clkd INVX4

** INVX2 Instance I2 = hspiceD device xi2
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi2 clk vdd vss net10 INVX2

** DFF_TSPC_V2 Instance I1<3:0> = hspiceD device xi1<3>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: DFF_TSPC_V2, View: schematic
xi1<3> clkd d<3> vdd vss dop<3> DFF_TSPC_V2

** DFF_TSPC_V2 Instance I1<3:0> = hspiceD device xi1<2>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: DFF_TSPC_V2, View: schematic
xi1<2> clkd d<2> vdd vss dop<2> DFF_TSPC_V2

** DFF_TSPC_V2 Instance I1<3:0> = hspiceD device xi1<1>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: DFF_TSPC_V2, View: schematic
xi1<1> clkd d<1> vdd vss dop<1> DFF_TSPC_V2

** DFF_TSPC_V2 Instance I1<3:0> = hspiceD device xi1<0>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: DFF_TSPC_V2, View: schematic
xi1<0> clkd d<0> vdd vss dop<0> DFF_TSPC_V2

** BUF22444 Instance I18 = hspiceD device xi18
** Instance of Lib: CTDTDSM_NSSAR,  Cell: BUF22444, View: schematic
xi18 vdd vss dop<3> doe<3> doeb<3> dout<3> BUF22444

** BUF22444 Instance I36 = hspiceD device xi36
** Instance of Lib: CTDTDSM_NSSAR,  Cell: BUF22444, View: schematic
xi36 vdd vss dop<0> doe<0> doeb<0> dout<0> BUF22444

** BUF22444 Instance I35 = hspiceD device xi35
** Instance of Lib: CTDTDSM_NSSAR,  Cell: BUF22444, View: schematic
xi35 vdd vss dop<1> doe<1> doeb<1> dout<1> BUF22444

** BUF22444 Instance I34 = hspiceD device xi34
** Instance of Lib: CTDTDSM_NSSAR,  Cell: BUF22444, View: schematic
xi34 vdd vss dop<2> doe<2> doeb<2> dout<2> BUF22444
.ends LOGIC_DOUT_V2
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: BSSW_WOTOD
** View name: schematic
** terminal mapping: AVDD	= avdd
**                   AVSS	= avss
**                   PHI	= phi
**                   VG	= vg
**                   VIN	= vin
**                   VOUT	= vout
.subckt type:analog BSSW_WOTOD avdd avss phi vg vin vout

** nch_lvt_mac Instance M13 = hspiceD device xm13
xm13 phie phieb avss avss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_lvt_mac Instance M10 = hspiceD device xm10
xm10 phieb net013 avss avss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_lvt_mac Instance M9 = hspiceD device xm9
xm9 net013 phi avss avss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_lvt_mac Instance M5 = hspiceD device xm5
xm5 net13 phieb net06 avss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=85.854e-3 nrs=85.854e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M2 = hspiceD device xm2
xm2 net13 vg net06 avss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=85.854e-3 nrs=85.854e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M3 = hspiceD device xm3
xm3 net016 avdd vg avss nch_lvt_mac l=40e-9 w=960e-9 multi=1 nf=2 sd=140e-9 ad=67.2e-15 as=105.6e-15 pd=1.24e-6 ps=2.36e-6 nrd=44.631e-3 nrs=44.631e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_lvt_mac Instance M28 = hspiceD device xm28
xm28 avss phie net016 avss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=85.854e-3 nrs=85.854e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M24 = hspiceD device xm24
xm24 net13 phie avss avss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=85.854e-3 nrs=85.854e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M25 = hspiceD device xm25
xm25 vout vg vin avss nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=22.768e-3 nrs=22.768e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** nch_lvt_mac Instance M26 = hspiceD device xm26
xm26 vin vg net13 avss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=85.854e-3 nrs=85.854e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M12 = hspiceD device xm12
xm12 phie phieb avdd avdd pch_lvt_mac l=40e-9 w=960e-9 multi=1 nf=2 sd=140e-9 ad=67.2e-15 as=105.6e-15 pd=1.24e-6 ps=2.36e-6 nrd=59.38e-3 nrs=59.38e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_lvt_mac Instance M11 = hspiceD device xm11
xm11 phieb net013 avdd avdd pch_lvt_mac l=40e-9 w=960e-9 multi=1 nf=2 sd=140e-9 ad=67.2e-15 as=105.6e-15 pd=1.24e-6 ps=2.36e-6 nrd=59.38e-3 nrs=59.38e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_lvt_mac Instance M8 = hspiceD device xm8
xm8 net013 phi avdd avdd pch_lvt_mac l=40e-9 w=960e-9 multi=1 nf=2 sd=140e-9 ad=67.2e-15 as=105.6e-15 pd=1.24e-6 ps=2.36e-6 nrd=59.38e-3 nrs=59.38e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_lvt_mac Instance M1 = hspiceD device xm1
xm1 vg net06 net8 net8 pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M4 = hspiceD device xm4
xm4 net06 phieb avdd avdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M0 = hspiceD device xm0
xm0 net8 vg avdd net8 pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** cfmom Instance C0 = hspiceD device xc0
xc0 net8 net13 avdd cfmom nr=16 lr=4e-6 w=100e-9 s=100e-9 stm=2 spm=6 multi=1 ftip=140e-9 dmflag=0
.ends BSSW_WOTOD
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: BSSW_WOTOD_NS
** View name: schematic
** terminal mapping: AVDD	= avdd
**                   AVSS	= avss
**                   PHI	= phi
**                   VCM	= vcm
**                   VG	= vg
.subckt type:analog BSSW_WOTOD_NS avdd avss phi vcm vg

** nch_lvt_mac Instance M12 = hspiceD device xm12
xm12 phieb phie avss avss nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M5 = hspiceD device xm5
xm5 net019 phieb net018 avss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=85.854e-3 nrs=85.854e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M3 = hspiceD device xm3
xm3 net016 avdd vg avss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=85.854e-3 nrs=85.854e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M10 = hspiceD device xm10
xm10 phie phi avss avss nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M28 = hspiceD device xm28
xm28 avss phie net016 avss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=85.854e-3 nrs=85.854e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M24 = hspiceD device xm24
xm24 net019 phie avss avss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=85.854e-3 nrs=85.854e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M7 = hspiceD device xm7
xm7 vcm phieb net019 avss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=85.854e-3 nrs=85.854e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M26 = hspiceD device xm26
xm26 vcm vg net019 avss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_lvt_mac Instance M11 = hspiceD device xm11
xm11 phieb phie avdd avdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M9 = hspiceD device xm9
xm9 phie phi avdd avdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M6 = hspiceD device xm6
xm6 net018 phie net019 avdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M1 = hspiceD device xm1
xm1 vg net018 net8 net8 pch_lvt_mac l=40e-9 w=960e-9 multi=1 nf=4 sd=140e-9 ad=67.2e-15 as=86.4e-15 pd=1.52e-6 ps=2.16e-6 nrd=130.495e-3 nrs=130.495e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_lvt_mac Instance M4 = hspiceD device xm4
xm4 net018 phieb avdd avdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M0 = hspiceD device xm0
xm0 net8 phieb avdd net8 pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** cfmom Instance C0 = hspiceD device xc0
xc0 net8 net019 avdd cfmom nr=16 lr=4e-6 w=100e-9 s=100e-9 stm=2 spm=6 multi=1 ftip=140e-9 dmflag=0
.ends BSSW_WOTOD_NS
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: INVX1NB
** View name: schematic
** terminal mapping: I	= i
**                   VB	= vb
**                   VDD	= vdd
**                   VSS	= vss
**                   ZN	= zn
.subckt type:digital INVX1NB i vb vdd vss zn

** nch_lvt_mac Instance M1 = hspiceD device xm1
xm1 zn i vss vb nch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=1

** pch_lvt_mac Instance M0 = hspiceD device xm0
xm0 zn i vdd vdd pch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=1
.ends INVX1NB
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: INVX8NB
** View name: schematic
** terminal mapping: I	= i
**                   VB	= vb
**                   VDD	= vdd
**                   VSS	= vss
**                   ZN	= zn
.subckt type:digital INVX8NB i vb vdd vss zn

** nch_lvt Instance M1 = hspiceD device m1
m1 zn i vss vb nch_lvt l=40e-9 w=960e-9 m=1 nf=4 sd=140e-9 ad=67.2e-15 as=86.4e-15 pd=1.52e-6 ps=2.16e-6 nrd=102.455e-3 nrs=102.455e-3 sa=256.788e-9 sb=256.788e-9

** pch_lvt Instance M0 = hspiceD device m0
m0 zn i vdd vdd pch_lvt l=40e-9 w=1.92e-6 m=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=28.999e-3 nrs=28.999e-3 sa=256.788e-9 sb=256.788e-9
.ends INVX8NB
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: INVX2NB
** View name: schematic
** terminal mapping: I	= i
**                   VB	= vb
**                   VDD	= vdd
**                   VSS	= vss
**                   ZN	= zn
.subckt type:digital INVX2NB i vb vdd vss zn

** nch_lvt_mac Instance M1 = hspiceD device xm1
xm1 zn i vss vb nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=1

** pch_lvt_mac Instance M0 = hspiceD device xm0
xm0 zn i vdd vdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=1
.ends INVX2NB
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: INVX4NB
** View name: schematic
** terminal mapping: I	= i
**                   VB	= vb
**                   VDD	= vdd
**                   VSS	= vss
**                   ZN	= zn
.subckt type:digital INVX4NB i vb vdd vss zn

** nch_lvt_mac Instance M1 = hspiceD device xm1
xm1 zn i vss vb nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=1

** pch_lvt_mac Instance M0 = hspiceD device xm0
xm0 zn i vdd vdd pch_lvt_mac l=40e-9 w=960e-9 multi=1 nf=2 sd=140e-9 ad=67.2e-15 as=105.6e-15 pd=1.24e-6 ps=2.36e-6 nrd=59.38e-3 nrs=59.38e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=1
.ends INVX4NB
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: SC4B_wELD_V2
** View name: schematic
** terminal mapping: AVDD	= avdd
**                   AVSS	= avss
**                   BOT<3>	= bot<3>
**                   BOT<2>	= bot<2>
**                   BOT<1>	= bot<1>
**                   BOT<0>	= bot<0>
**                   BOTE<3>	= bote<3>
**                   BOTE<2>	= bote<2>
**                   BOTE<1>	= bote<1>
**                   BOTE<0>	= bote<0>
**                   D<3>	= d<3>
**                   D<2>	= d<2>
**                   D<1>	= d<1>
**                   D<0>	= d<0>
**                   DE<3>	= de<3>
**                   DE<2>	= de<2>
**                   DE<1>	= de<1>
**                   DE<0>	= de<0>
**                   NS<2>	= ns<2>
**                   NS<1>	= ns<1>
**                   NSBS<2>	= nsbs<2>
**                   NSBS<1>	= nsbs<1>
**                   PHS	= phs
**                   VELD	= veld
**                   VIN	= vin
**                   VINT<2>	= vint<2>
**                   VINT<1>	= vint<1>
**                   VINT<0>	= vint<0>
**                   VREF	= vref
**                   VREFN	= vrefn
**                   VREFP	= vrefp
**                   VSW	= vsw
.subckt type:mixed SC4B_wELD_V2 avdd avss bot<3> bot<2> bot<1> bot<0> bote<3> bote<2> bote<1> bote<0> d<3> d<2> d<1> d<0> de<3> de<2> de<1> de<0> ns<2> ns<1> nsbs<2> nsbs<1> phs veld vin vint<2> vint<1> vint<0> vref vrefn vrefp vsw

** nch_lvt_mac Instance M0 = hspiceD device xm0
xm0 vint<0> nsbs<1> vint<1> avss nch_lvt_mac l=40e-9 w=1.44e-6 multi=1 nf=3 sd=140e-9 ad=120e-15 as=120e-15 pd=2.42e-6 ps=2.42e-6 nrd=30.153e-3 nrs=30.153e-3 sa=211.501e-9 sb=211.501e-9 sa1=156.639e-9 sa2=206.282e-9 sa3=326.246e-9 sa4=204.965e-9 sb1=156.639e-9 sb2=206.282e-9 sb3=326.246e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=160.097e-9 spba=172.251e-9 sapb=237.956e-9 spba1=174.155e-9 mismatchflag=0 globalflag=0 totalflag=1

** nch_lvt_mac Instance M1 = hspiceD device xm1
xm1 vint<0> nsbs<2> vint<2> avss nch_lvt_mac l=40e-9 w=1.44e-6 multi=1 nf=3 sd=140e-9 ad=120e-15 as=120e-15 pd=2.42e-6 ps=2.42e-6 nrd=30.153e-3 nrs=30.153e-3 sa=211.501e-9 sb=211.501e-9 sa1=156.639e-9 sa2=206.282e-9 sa3=326.246e-9 sa4=204.965e-9 sb1=156.639e-9 sb2=206.282e-9 sb3=326.246e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=160.097e-9 spba=172.251e-9 sapb=237.956e-9 spba1=174.155e-9 mismatchflag=0 globalflag=0 totalflag=1

** BSSW_WOTOD Instance I159 = hspiceD device xi159
** Instance of Lib: CTDTDSM_NSSAR,  Cell: BSSW_WOTOD, View: schematic
xi159 avdd avss phs vsw vin vint<0> BSSW_WOTOD

** BSSW_WOTOD_NS Instance I2<2:1> = hspiceD device xi2<2>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: BSSW_WOTOD_NS, View: schematic
xi2<2> avdd avss ns<2> vref nsbs<2> BSSW_WOTOD_NS

** BSSW_WOTOD_NS Instance I2<2:1> = hspiceD device xi2<1>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: BSSW_WOTOD_NS, View: schematic
xi2<1> avdd avss ns<1> vref nsbs<1> BSSW_WOTOD_NS

** INVX1NB Instance I151 = hspiceD device xi151
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1NB, View: schematic
xi151 de<0> avss veld vrefn bote<0> INVX1NB

** INVX1NB Instance I164 = hspiceD device xi164
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1NB, View: schematic
xi164 d<1> avss vrefp vrefn bot<1> INVX1NB

** INVX1NB Instance I165 = hspiceD device xi165
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1NB, View: schematic
xi165 d<1> avss vrefp vrefn botb<1> INVX1NB

** INVX1NB Instance I167 = hspiceD device xi167
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1NB, View: schematic
xi167 d<0> avss vrefp vrefn bot<0> INVX1NB

** INVX8NB Instance I150 = hspiceD device xi150
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX8NB, View: schematic
xi150 de<3> avss veld vrefn bote<3> INVX8NB

** INVX2NB Instance I153 = hspiceD device xi153
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2NB, View: schematic
xi153 de<1> avss veld vrefn bote<1> INVX2NB

** INVX2NB Instance I162 = hspiceD device xi162
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2NB, View: schematic
xi162 d<2> avss vrefp vrefn bot<2> INVX2NB

** INVX2NB Instance I163 = hspiceD device xi163
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2NB, View: schematic
xi163 d<2> avss vrefp vrefn botb<2> INVX2NB

** INVX4NB Instance I152 = hspiceD device xi152
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4NB, View: schematic
xi152 de<2> avss veld vrefn bote<2> INVX4NB

** INVX4NB Instance I170 = hspiceD device xi170
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4NB, View: schematic
xi170 d<3> avss vrefp vrefn net4 INVX4NB

** INVX4NB Instance I169 = hspiceD device xi169
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4NB, View: schematic
xi169 net4 avss vrefp vrefn bot<3> INVX4NB

** INVX4NB Instance I161 = hspiceD device xi161
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4NB, View: schematic
xi161 net4 avss vrefp vrefn botb<3> INVX4NB
.ends SC4B_wELD_V2
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: INVX1
** View name: schematic
** terminal mapping: I	= i
**                   VDD	= vdd
**                   VSS	= vss
**                   ZN	= zn
.subckt type:digital INVX1 i vdd vss zn

** nch_lvt_mac Instance M1 = hspiceD device xm1
xm1 zn i vss vss nch_lvt_mac l=40e-9 w=155e-9 multi=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=249.512e-3 nrs=249.512e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M0 = hspiceD device xm0
xm0 zn i vdd vdd pch_lvt_mac l=40e-9 w=205e-9 multi=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=479.34e-3 nrs=479.34e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0
.ends INVX1
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: nor
** View name: schematic
** terminal mapping: A	= a
**                   B	= b
**                   DVDD	= dvdd
**                   DVSS	= dvss
**                   O	= o
.subckt type:digital nor a b dvdd dvss o

** pch_lvt Instance M1 = hspiceD device m1
m1 o b net8 dvdd pch_lvt l=40e-9 w=410e-9 m=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=106.52e-3 nrs=106.52e-3 sa=110e-9 sb=110e-9

** pch_lvt Instance M5 = hspiceD device m5
m5 net8 a dvdd dvdd pch_lvt l=40e-9 w=410e-9 m=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=106.52e-3 nrs=106.52e-3 sa=110e-9 sb=110e-9

** nch_lvt Instance M0 = hspiceD device m0
m0 o b dvss dvss nch_lvt l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=249.512e-3 nrs=249.512e-3 sa=110e-9 sb=110e-9

** nch_lvt Instance M3 = hspiceD device m3
m3 o a dvss dvss nch_lvt l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=249.512e-3 nrs=249.512e-3 sa=110e-9 sb=110e-9
.ends nor
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: NANDX2
** View name: schematic
** terminal mapping: A	= a
**                   B	= b
**                   DVDD	= dvdd
**                   DVSS	= dvss
**                   O	= o
.subckt type:digital NANDX2 a b dvdd dvss o

** pch_lvt Instance M13 = hspiceD device m13
m13 o b dvdd dvdd pch_lvt l=40e-9 w=410e-9 m=1 nf=2 sd=140e-9 ad=28.7e-15 as=45.1e-15 pd=690e-9 ps=1.26e-6 nrd=228.243e-3 nrs=228.243e-3 sa=163.182e-9 sb=163.182e-9

** pch_lvt Instance M1 = hspiceD device m1
m1 o a dvdd dvdd pch_lvt l=40e-9 w=410e-9 m=1 nf=2 sd=140e-9 ad=28.7e-15 as=45.1e-15 pd=690e-9 ps=1.26e-6 nrd=228.243e-3 nrs=228.243e-3 sa=163.182e-9 sb=163.182e-9

** nch_lvt Instance M6 = hspiceD device m6
m6 net011 b dvss dvss nch_lvt l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=124.756e-3 nrs=124.756e-3 sa=110e-9 sb=110e-9

** nch_lvt Instance M0 = hspiceD device m0
m0 o a net011 dvss nch_lvt l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=124.756e-3 nrs=124.756e-3 sa=110e-9 sb=110e-9
.ends NANDX2
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: LOGIC_ELD
** View name: schematic
** terminal mapping: DE<3>	= de<3>
**                   DE<2>	= de<2>
**                   DE<1>	= de<1>
**                   DE<0>	= de<0>
**                   DO<3>	= do<3>
**                   DO<2>	= do<2>
**                   DO<1>	= do<1>
**                   DO<0>	= do<0>
**                   PHE	= phe
**                   VDD	= vdd
**                   VSS	= vss
.subckt type:digital LOGIC_ELD de<3> de<2> de<1> de<0> do<3> do<2> do<1> do<0> phe vdd vss

** INVX4 Instance I12 = hspiceD device xi12
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi12 net03 vdd vss de<3> INVX4

** INVX1 Instance I17 = hspiceD device xi17
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1, View: schematic
xi17 net014 vdd vss de<1> INVX1

** INVX1 Instance I19 = hspiceD device xi19
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1, View: schematic
xi19 net013 vdd vss de<0> INVX1

** INVX2 Instance I15 = hspiceD device xi15
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi15 net015 vdd vss de<2> INVX2

** INVX2NB Instance I11 = hspiceD device xi11
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2NB, View: schematic
xi11 sampd vss vdd vss sampb INVX2NB

** INVX2NB Instance I158 = hspiceD device xi158
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2NB, View: schematic
xi158 phe vss vdd vss sampd INVX2NB

** nor Instance I134 = hspiceD device xi134
** Instance of Lib: CTDTDSM_NSSAR,  Cell: nor, View: schematic
xi134 do<3> sampd vdd vss net03 nor

** nor Instance I16 = hspiceD device xi16
** Instance of Lib: CTDTDSM_NSSAR,  Cell: nor, View: schematic
xi16 do<1> sampd vdd vss net014 nor

** NANDX2 Instance I14 = hspiceD device xi14
** Instance of Lib: CTDTDSM_NSSAR,  Cell: NANDX2, View: schematic
xi14 do<2> sampd vdd vss net015 NANDX2

** NANDX2 Instance I18 = hspiceD device xi18
** Instance of Lib: CTDTDSM_NSSAR,  Cell: NANDX2, View: schematic
xi18 do<0> sampd vdd vss net013 NANDX2
.ends LOGIC_ELD
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: CLK_COMP
** View name: schematic
** terminal mapping: CLK	= clk
**                   CLKBO	= clkbo
**                   DN	= dn
**                   DP	= dp
**                   GT	= gt
**                   VB	= vb
**                   VDD	= vdd
**                   VIN	= vin
**                   VINB	= vinb
**                   VINTN<2>	= vintn<2>
**                   VINTN<1>	= vintn<1>
**                   VINTP<2>	= vintp<2>
**                   VINTP<1>	= vintp<1>
**                   VSS	= vss
.subckt type:analog CLK_COMP clk clkbo dn dp gt vb vdd vin vinb vintn<2> vintn<1> vintp<2> vintp<1> vss

** pch_lvt_mac Instance M103 = hspiceD device xm103
xm103 clkb clk vdd vdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M30 = hspiceD device xm30
xm30 clk net030 vdd vdd pch_lvt_mac l=40e-9 w=3.84e-6 multi=1 nf=8 sd=140e-9 ad=268.8e-15 as=307.2e-15 pd=4.96e-6 ps=6.08e-6 nrd=14.333e-3 nrs=14.333e-3 sa=420.901e-9 sb=420.901e-9 sa1=218.025e-9 sa2=376.982e-9 sa3=612.324e-9 sa4=401.816e-9 sb1=218.025e-9 sb2=376.982e-9 sb3=612.324e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=200.193e-9 spba=164.62e-9 sapb=257.228e-9 spba1=166.439e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M124 = hspiceD device xm124
xm124 clkbo clk vdd vdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M16 = hspiceD device xm16
xm16 v2p vxn vdd _net0 pch_lvt_mac l=40e-9 w=2.88e-6 multi=1 nf=6 sd=140e-9 ad=201.6e-15 as=240e-15 pd=3.72e-6 ps=4.84e-6 nrd=19.184e-3 nrs=19.184e-3 sa=341.472e-9 sb=341.472e-9 sa1=197.813e-9 sa2=316.439e-9 sa3=523.981e-9 sa4=327.012e-9 sb1=197.813e-9 sb2=316.439e-9 sb3=523.981e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=186.948e-9 spba=165.964e-9 sapb=248.903e-9 spba1=167.797e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M114 = hspiceD device xm114
xm114 d v2n vdd vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=28.999e-3 nrs=28.999e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M122 = hspiceD device xm122
xm122 dp db vdd vdd pch_lvt_mac l=40e-9 w=960e-9 multi=1 nf=2 sd=140e-9 ad=67.2e-15 as=105.6e-15 pd=1.24e-6 ps=2.36e-6 nrd=59.38e-3 nrs=59.38e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M25 = hspiceD device xm25
xm25 vmid v2p vdd vdd pch_lvt_mac l=40e-9 w=960e-9 multi=1 nf=2 sd=140e-9 ad=67.2e-15 as=105.6e-15 pd=1.24e-6 ps=2.36e-6 nrd=59.38e-3 nrs=59.38e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M14 = hspiceD device xm14
xm14 net027 d vdd vdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M24 = hspiceD device xm24
xm24 db v2p vdd vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=28.999e-3 nrs=28.999e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M85 = hspiceD device xm85
xm85 net030 gt vdd vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=2 sd=140e-9 ad=134.4e-15 as=211.2e-15 pd=2.2e-6 ps=4.28e-6 nrd=21.813e-3 nrs=21.813e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M6 = hspiceD device xm6
xm6 net031 net027 vdd vdd pch_lvt_mac l=40e-9 w=960e-9 multi=1 nf=1 sd=140e-9 ad=105.6e-15 as=105.6e-15 pd=2.14e-6 ps=2.14e-6 nrd=45.81e-3 nrs=45.81e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M8 = hspiceD device xm8
xm8 db d vdd vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=28.999e-3 nrs=28.999e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M5 = hspiceD device xm5
xm5 d db vdd vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=28.999e-3 nrs=28.999e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M119 = hspiceD device xm119
xm119 dn d vdd vdd pch_lvt_mac l=40e-9 w=960e-9 multi=1 nf=2 sd=140e-9 ad=67.2e-15 as=105.6e-15 pd=1.24e-6 ps=2.36e-6 nrd=59.38e-3 nrs=59.38e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M71 = hspiceD device xm71
xm71 net027 db vdd vdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M9 = hspiceD device xm9
xm9 net030 net031 vdd vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=2 sd=140e-9 ad=134.4e-15 as=211.2e-15 pd=2.2e-6 ps=4.28e-6 nrd=21.813e-3 nrs=21.813e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M35 = hspiceD device xm35
xm35 vxn clk vdd vdd pch_lvt_mac l=40e-9 w=2.88e-6 multi=1 nf=6 sd=140e-9 ad=201.6e-15 as=240e-15 pd=3.72e-6 ps=4.84e-6 nrd=19.184e-3 nrs=19.184e-3 sa=341.472e-9 sb=341.472e-9 sa1=197.813e-9 sa2=316.439e-9 sa3=523.981e-9 sa4=327.012e-9 sb1=197.813e-9 sb2=316.439e-9 sb3=523.981e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=186.948e-9 spba=165.964e-9 sapb=248.903e-9 spba1=167.797e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M73 = hspiceD device xm73
xm73 vxp clk vdd vdd pch_lvt_mac l=40e-9 w=2.88e-6 multi=1 nf=6 sd=140e-9 ad=201.6e-15 as=240e-15 pd=3.72e-6 ps=4.84e-6 nrd=19.184e-3 nrs=19.184e-3 sa=341.472e-9 sb=341.472e-9 sa1=197.813e-9 sa2=316.439e-9 sa3=523.981e-9 sa4=327.012e-9 sb1=197.813e-9 sb2=316.439e-9 sb3=523.981e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=186.948e-9 spba=165.964e-9 sapb=248.903e-9 spba1=167.797e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M19 = hspiceD device xm19
xm19 v2n vxp vdd _net0 pch_lvt_mac l=40e-9 w=2.88e-6 multi=1 nf=6 sd=140e-9 ad=201.6e-15 as=240e-15 pd=3.72e-6 ps=4.84e-6 nrd=19.184e-3 nrs=19.184e-3 sa=341.472e-9 sb=341.472e-9 sa1=197.813e-9 sa2=316.439e-9 sa3=523.981e-9 sa4=327.012e-9 sb1=197.813e-9 sb2=316.439e-9 sb3=523.981e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=186.948e-9 spba=165.964e-9 sapb=248.903e-9 spba1=167.797e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M26 = hspiceD device xm26
xm26 vmidb v2n vdd vdd pch_lvt_mac l=40e-9 w=960e-9 multi=1 nf=2 sd=140e-9 ad=67.2e-15 as=105.6e-15 pd=1.24e-6 ps=2.36e-6 nrd=59.38e-3 nrs=59.38e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M10 = hspiceD device xm10
xm10 net030 net031 net032 vss nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=22.768e-3 nrs=22.768e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M69 = hspiceD device xm69
xm69 v1p vintn<1> vss vss nch_lvt_mac l=40e-9 w=720e-9 multi=1 nf=3 sd=140e-9 ad=60e-15 as=60e-15 pd=1.46e-6 ps=1.46e-6 nrd=135.69e-3 nrs=135.69e-3 sa=211.501e-9 sb=211.501e-9 sa1=156.639e-9 sa2=206.282e-9 sa3=326.246e-9 sa4=204.965e-9 sb1=156.639e-9 sb2=206.282e-9 sb3=326.246e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=160.097e-9 spba=172.251e-9 sapb=237.956e-9 spba1=174.155e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M17 = hspiceD device xm17
xm17 net032 gt vss vss nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=22.768e-3 nrs=22.768e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M116 = hspiceD device xm116
xm116 vxp clk v1p vss nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=22.768e-3 nrs=22.768e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M102 = hspiceD device xm102
xm102 clkb clk vss vss nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M120 = hspiceD device xm120
xm120 dn d vss vss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=85.854e-3 nrs=85.854e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M1 = hspiceD device xm1
xm1 db d vmid vss nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=22.768e-3 nrs=22.768e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M113 = hspiceD device xm113
xm113 vmidb v2n vss vss nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=22.768e-3 nrs=22.768e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M7 = hspiceD device xm7
xm7 net031 net027 vss vss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=85.854e-3 nrs=85.854e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M28 = hspiceD device xm28
xm28 vss vss v1p vss nch_lvt_mac l=40e-9 w=240e-9 multi=2 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M70 = hspiceD device xm70
xm70 v1p vinb vss vss nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M97 = hspiceD device xm97
xm97 net027 clkb net0107 vss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=85.854e-3 nrs=85.854e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M12 = hspiceD device xm12
xm12 net0107 vb vss vss nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=22.768e-3 nrs=22.768e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M121 = hspiceD device xm121
xm121 dp db vss vss nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=85.854e-3 nrs=85.854e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M115 = hspiceD device xm115
xm115 vxn clk v1n vss nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=22.768e-3 nrs=22.768e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M27 = hspiceD device xm27
xm27 clk net030 vss vss nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=2 sd=140e-9 ad=134.4e-15 as=211.2e-15 pd=2.2e-6 ps=4.28e-6 nrd=16.395e-3 nrs=16.395e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M20 = hspiceD device xm20
xm20 v2p vxn vss vss nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=22.768e-3 nrs=22.768e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M3 = hspiceD device xm3
xm3 d db vmidb vss nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=22.768e-3 nrs=22.768e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M18 = hspiceD device xm18
xm18 vss vss vss vss nch_lvt_mac l=40e-9 w=240e-9 multi=24 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M55 = hspiceD device xm55
xm55 v1n vin vss vss nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M23 = hspiceD device xm23
xm23 vss vss v1n vss nch_lvt_mac l=40e-9 w=240e-9 multi=2 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M57 = hspiceD device xm57
xm57 v1n vintp<2> vss vss nch_lvt_mac l=40e-9 w=2.88e-6 multi=1 nf=12 sd=140e-9 ad=201.6e-15 as=220.8e-15 pd=4.56e-6 ps=5.2e-6 nrd=34.619e-3 nrs=34.619e-3 sa=569.822e-9 sb=569.822e-9 sa1=250.073e-9 sa2=479.667e-9 sa3=742.764e-9 sa4=542.403e-9 sb1=250.073e-9 sb2=479.667e-9 sb3=742.764e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=221.196e-9 spba=163.348e-9 sapb=271.711e-9 spba1=165.153e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M125 = hspiceD device xm125
xm125 clkbo clk vss vss nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M22 = hspiceD device xm22
xm22 vmid v2p vss vss nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=22.768e-3 nrs=22.768e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M21 = hspiceD device xm21
xm21 v2n vxp vss vss nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=22.768e-3 nrs=22.768e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M56 = hspiceD device xm56
xm56 v1n vintp<1> vss vss nch_lvt_mac l=40e-9 w=720e-9 multi=1 nf=3 sd=140e-9 ad=60e-15 as=60e-15 pd=1.46e-6 ps=1.46e-6 nrd=135.69e-3 nrs=135.69e-3 sa=211.501e-9 sb=211.501e-9 sa1=156.639e-9 sa2=206.282e-9 sa3=326.246e-9 sa4=204.965e-9 sb1=156.639e-9 sb2=206.282e-9 sb3=326.246e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=160.097e-9 spba=172.251e-9 sapb=237.956e-9 spba1=174.155e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M68 = hspiceD device xm68
xm68 v1p vintn<2> vss vss nch_lvt_mac l=40e-9 w=2.88e-6 multi=1 nf=12 sd=140e-9 ad=201.6e-15 as=220.8e-15 pd=4.56e-6 ps=5.2e-6 nrd=34.619e-3 nrs=34.619e-3 sa=569.822e-9 sb=569.822e-9 sa1=250.073e-9 sa2=479.667e-9 sa3=742.764e-9 sa4=542.403e-9 sb1=250.073e-9 sb2=479.667e-9 sb3=742.764e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=221.196e-9 spba=163.348e-9 sapb=271.711e-9 spba1=165.153e-9 mismatchflag=0 globalflag=0 totalflag=0
.ends CLK_COMP
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: INVX8
** View name: schematic
** terminal mapping: I	= i
**                   VDD	= vdd
**                   VSS	= vss
**                   ZN	= zn
.subckt type:digital INVX8 i vdd vss zn

** nch_lvt_mac Instance M1 = hspiceD device xm1
xm1 zn i vss vss nch_lvt_mac l=40e-9 w=1.24e-6 multi=1 nf=8 sd=140e-9 ad=86.8e-15 as=99.2e-15 pd=2.36e-6 ps=2.83e-6 nrd=33.423e-3 nrs=33.423e-3 sa=420.901e-9 sb=420.901e-9 sa1=218.025e-9 sa2=376.982e-9 sa3=612.324e-9 sa4=401.816e-9 sb1=218.025e-9 sb2=376.982e-9 sb3=612.324e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=200.193e-9 spba=164.62e-9 sapb=257.228e-9 spba1=166.439e-9 mismatchflag=0 globalflag=0 totalflag=1

** pch_lvt_mac Instance M0 = hspiceD device xm0
xm0 zn i vdd vdd pch_lvt_mac l=40e-9 w=1.64e-6 multi=1 nf=8 sd=140e-9 ad=114.8e-15 as=131.2e-15 pd=2.76e-6 ps=3.33e-6 nrd=55.091e-3 nrs=55.091e-3 sa=420.901e-9 sb=420.901e-9 sa1=218.025e-9 sa2=376.982e-9 sa3=612.324e-9 sa4=401.816e-9 sb1=218.025e-9 sb2=376.982e-9 sb3=612.324e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=200.193e-9 spba=164.62e-9 sapb=257.228e-9 spba1=166.439e-9 mismatchflag=0 globalflag=0 totalflag=1
.ends INVX8
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: BUF248
** View name: schematic
** terminal mapping: DVDD	= dvdd
**                   DVSS	= dvss
**                   IN	= in
**                   OUT	= out
**                   OUTA	= outa
.subckt type:digital BUF248 dvdd dvss in out outa

** INVX8 Instance I186 = hspiceD device xi186
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX8, View: schematic
xi186 net23 dvdd dvss out INVX8

** INVX1 Instance I184 = hspiceD device xi184
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1, View: schematic
xi184 in dvdd dvss net21 INVX1

** INVX2 Instance I185 = hspiceD device xi185
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi185 net21 dvdd dvss outa INVX2

** INVX4 Instance I187 = hspiceD device xi187
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi187 outa dvdd dvss net23 INVX4
.ends BUF248
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: GT_GEN
** View name: schematic
** terminal mapping: DVDD	= dvdd
**                   DVSS	= dvss
**                   GT	= gt
**                   LAST	= last
**                   START	= start
.subckt type:digital GT_GEN dvdd dvss gt last start

** INVX2 Instance I319 = hspiceD device xi319
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi319 net028 dvdd dvss net027 INVX2

** pch_lvt_mac Instance M12 = hspiceD device xm12
xm12 b a net030 dvdd pch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M1 = hspiceD device xm1
xm1 net030 last dvdd dvdd pch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M4 = hspiceD device xm4
xm4 c b dvdd dvdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** INVX1 Instance I3 = hspiceD device xi3
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1, View: schematic
xi3 net016 dvdd dvss net021 INVX1

** INVX1 Instance I2 = hspiceD device xi2
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1, View: schematic
xi2 net021 dvdd dvss net028 INVX1

** INVX1 Instance I1 = hspiceD device xi1
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1, View: schematic
xi1 start dvdd dvss net014 INVX1

** INVX1 Instance I252 = hspiceD device xi252
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1, View: schematic
xi252 c dvdd dvss net016 INVX1

** INVX1 Instance I0 = hspiceD device xi0
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1, View: schematic
xi0 net014 dvdd dvss a INVX1

** INVX4 Instance I320 = hspiceD device xi320
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi320 net027 dvdd dvss gt INVX4

** nch_lvt_mac Instance M2 = hspiceD device xm2
xm2 b last dvss dvss nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M9 = hspiceD device xm9
xm9 net029 b dvss dvss nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=2 sd=140e-9 ad=16.8e-15 as=26.4e-15 pd=520e-9 ps=920e-9 nrd=100.421e-3 nrs=100.421e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M13 = hspiceD device xm13
xm13 c a net029 dvss nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=2 sd=140e-9 ad=16.8e-15 as=26.4e-15 pd=520e-9 ps=920e-9 nrd=100.421e-3 nrs=100.421e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=0
.ends GT_GEN
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: AND2
** View name: schematic
** terminal mapping: DVDD	= dvdd
**                   DVSS	= dvss
**                   S1	= s1
**                   S2	= s2
**                   SC	= sc
.subckt type:digital AND2 dvdd dvss s1 s2 sc

** nch_lvt_mac Instance M12 = hspiceD device xm12
xm12 sc net017 dvss dvss nch_lvt_mac l=40e-9 w=155e-9 multi=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=249.512e-3 nrs=249.512e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M6 = hspiceD device xm6
xm6 net011 s2 dvss dvss nch_lvt_mac l=40e-9 w=155e-9 multi=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=249.512e-3 nrs=249.512e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M0 = hspiceD device xm0
xm0 net017 s1 net011 dvss nch_lvt_mac l=40e-9 w=155e-9 multi=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=249.512e-3 nrs=249.512e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M13 = hspiceD device xm13
xm13 net017 s2 dvdd dvdd pch_lvt_mac l=40e-9 w=205e-9 multi=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=479.34e-3 nrs=479.34e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M11 = hspiceD device xm11
xm11 sc net017 dvdd dvdd pch_lvt_mac l=40e-9 w=205e-9 multi=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=479.34e-3 nrs=479.34e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M1 = hspiceD device xm1
xm1 net017 s1 dvdd dvdd pch_lvt_mac l=40e-9 w=205e-9 multi=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=479.34e-3 nrs=479.34e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0
.ends AND2
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: NS2_GEN
** View name: schematic
** terminal mapping: DVDD	= dvdd
**                   DVSS	= dvss
**                   NS<2>	= ns<2>
**                   START	= start
**                   STOP	= stop
.subckt type:digital NS2_GEN dvdd dvss ns<2> start stop

** INVX2 Instance I282 = hspiceD device xi282
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi282 net021 dvdd dvss ns<2> INVX2

** INVX1 Instance I283 = hspiceD device xi283
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1, View: schematic
xi283 net022 dvdd dvss net021 INVX1

** AND2 Instance I333 = hspiceD device xi333
** Instance of Lib: CTDTDSM_NSSAR,  Cell: AND2, View: schematic
xi333 dvdd dvss start stop net022 AND2
.ends NS2_GEN
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: DELAY_VAR_V2
** View name: schematic
** terminal mapping: I	= i
**                   O	= o
**                   VB	= vb
**                   VDD	= vdd
**                   VSS	= vss
.subckt type:digital DELAY_VAR_V2 i o vb vdd vss

** pch_lvt_mac Instance M13 = hspiceD device xm13
xm13 net017 net021 vdd vdd pch_lvt_mac l=80e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73436e-6 sapb=577.831e-9 spba1=1.74128e-6 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M11 = hspiceD device xm11
xm11 net021 net019 vdd vdd pch_lvt_mac l=80e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73436e-6 sapb=577.831e-9 spba1=1.74128e-6 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M10 = hspiceD device xm10
xm10 net011 net015 vdd vdd pch_lvt_mac l=120e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73551e-6 sapb=577.831e-9 spba1=1.74589e-6 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M6 = hspiceD device xm6
xm6 o net017 vdd vdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=267.212e-3 nrs=267.212e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M0 = hspiceD device xm0
xm0 net019 net011 vdd vdd pch_lvt_mac l=80e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73436e-6 sapb=577.831e-9 spba1=1.74128e-6 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M2 = hspiceD device xm2
xm2 net015 i vdd vdd pch_lvt_mac l=120e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73551e-6 sapb=577.831e-9 spba1=1.74589e-6 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M12 = hspiceD device xm12
xm12 net017 net021 vss vss nch_lvt_mac l=80e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73436e-6 sapb=577.831e-9 spba1=1.74128e-6 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M8 = hspiceD device xm8
xm8 net021 net019 vss vss nch_lvt_mac l=80e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73436e-6 sapb=577.831e-9 spba1=1.74128e-6 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M9 = hspiceD device xm9
xm9 net011 net015 net016 vss nch_lvt_mac l=120e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73551e-6 sapb=577.831e-9 spba1=1.74589e-6 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M7 = hspiceD device xm7
xm7 net016 vb vss vss nch_lvt_mac l=120e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73551e-6 sapb=577.831e-9 spba1=1.74589e-6 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M5 = hspiceD device xm5
xm5 o net017 vss vss nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=2 sd=140e-9 ad=16.8e-15 as=26.4e-15 pd=520e-9 ps=920e-9 nrd=100.421e-3 nrs=100.421e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M4 = hspiceD device xm4
xm4 net019 net011 vss vss nch_lvt_mac l=80e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73436e-6 sapb=577.831e-9 spba1=1.74128e-6 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M1 = hspiceD device xm1
xm1 net015 i net8 vss nch_lvt_mac l=120e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73551e-6 sapb=577.831e-9 spba1=1.74589e-6 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M3 = hspiceD device xm3
xm3 net8 vb vss vss nch_lvt_mac l=120e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73551e-6 sapb=577.831e-9 spba1=1.74589e-6 mismatchflag=0 globalflag=0 totalflag=0
.ends DELAY_VAR_V2
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: PHS_DELAY_V2
** View name: schematic
** terminal mapping: DVDD	= dvdd
**                   DVSS	= dvss
**                   F1	= f1
**                   SD1	= sd1
**                   SD2	= sd2
**                   VB	= vb
.subckt type:digital PHS_DELAY_V2 dvdd dvss f1 sd1 sd2 vb

** DELAY_VAR_V2 Instance I3 = hspiceD device xi3
** Instance of Lib: CTDTDSM_NSSAR,  Cell: DELAY_VAR_V2, View: schematic
xi3 net011 net010 vb dvdd dvss DELAY_VAR_V2

** DELAY_VAR_V2 Instance I4 = hspiceD device xi4
** Instance of Lib: CTDTDSM_NSSAR,  Cell: DELAY_VAR_V2, View: schematic
xi4 net010 sd2 vb dvdd dvss DELAY_VAR_V2

** INVX2 Instance I0 = hspiceD device xi0
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi0 f1 dvdd dvss net05 INVX2

** INVX2 Instance I2 = hspiceD device xi2
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi2 sd1 dvdd dvss net011 INVX2

** INVX4 Instance I1 = hspiceD device xi1
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi1 net05 dvdd dvss sd1 INVX4
.ends PHS_DELAY_V2
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: INVX6
** View name: schematic
** terminal mapping: I	= i
**                   VDD	= vdd
**                   VSS	= vss
**                   ZN	= zn
.subckt type:digital INVX6 i vdd vss zn

** nch_lvt Instance M1 = hspiceD device m1
m1 zn i vss vss nch_lvt l=40e-9 w=920e-9 m=1 nf=4 sd=140e-9 ad=64.4e-15 as=82.8e-15 pd=1.48e-6 ps=2.1e-6 nrd=98.186e-3 nrs=98.186e-3 sa=256.788e-9 sb=256.788e-9

** pch_lvt Instance M0 = hspiceD device m0
m0 zn i vdd vdd pch_lvt l=40e-9 w=1.24e-6 m=1 nf=4 sd=140e-9 ad=86.8e-15 as=111.6e-15 pd=1.8e-6 ps=2.58e-6 nrd=42.139e-3 nrs=42.139e-3 sa=256.788e-9 sb=256.788e-9
.ends INVX6
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: NAND2
** View name: schematic
** terminal mapping: A	= a
**                   B	= b
**                   DVDD	= dvdd
**                   DVSS	= dvss
**                   O	= o
.subckt type:digital NAND2 a b dvdd dvss o

** nch_lvt_mac Instance M6 = hspiceD device xm6
xm6 net011 b dvss dvss nch_lvt_mac l=40e-9 w=155e-9 multi=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=249.512e-3 nrs=249.512e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M0 = hspiceD device xm0
xm0 o a net011 dvss nch_lvt_mac l=40e-9 w=155e-9 multi=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=249.512e-3 nrs=249.512e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M13 = hspiceD device xm13
xm13 o b dvdd dvdd pch_lvt_mac l=40e-9 w=205e-9 multi=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=479.34e-3 nrs=479.34e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M1 = hspiceD device xm1
xm1 o a dvdd dvdd pch_lvt_mac l=40e-9 w=205e-9 multi=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=479.34e-3 nrs=479.34e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0
.ends NAND2
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: CLK_NONOVERLAP
** View name: schematic
** terminal mapping: DVDD	= dvdd
**                   DVSS	= dvss
**                   IN	= in
**                   OUT	= out
**                   OUTB	= outb
.subckt type:digital CLK_NONOVERLAP dvdd dvss in out outb

** INVX2 Instance I14 = hspiceD device xi14
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi14 net012 dvdd dvss net013 INVX2

** INVX2 Instance I16 = hspiceD device xi16
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi16 net011 dvdd dvss net09 INVX2

** INVX4 Instance I17 = hspiceD device xi17
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi17 net013 dvdd dvss outb INVX4

** INVX4 Instance I18 = hspiceD device xi18
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi18 net09 dvdd dvss out INVX4

** NAND2 Instance I11 = hspiceD device xi11
** Instance of Lib: CTDTDSM_NSSAR,  Cell: NAND2, View: schematic
xi11 net016 in dvdd dvss net018 NAND2

** NAND2 Instance I8 = hspiceD device xi8
** Instance of Lib: CTDTDSM_NSSAR,  Cell: NAND2, View: schematic
xi8 net031 net018 dvdd dvss net016 NAND2

** INVX1 Instance I12 = hspiceD device xi12
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1, View: schematic
xi12 net016 dvdd dvss net012 INVX1

** INVX1 Instance I19 = hspiceD device xi19
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1, View: schematic
xi19 in dvdd dvss net031 INVX1

** INVX1 Instance I15 = hspiceD device xi15
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1, View: schematic
xi15 net018 dvdd dvss net011 INVX1
.ends CLK_NONOVERLAP
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: PHS_GEN_V2
** View name: schematic
** terminal mapping: DVDD	= dvdd
**                   DVSS	= dvss
**                   PHE	= phe
**                   SD1	= sd1
**                   SD2	= sd2
**                   ST	= st
.subckt type:digital PHS_GEN_V2 dvdd dvss phe sd1 sd2 st

** INVX6 Instance I4 = hspiceD device xi4
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX6, View: schematic
xi4 net06 dvdd dvss phe INVX6

** nor Instance I250 = hspiceD device xi250
** Instance of Lib: CTDTDSM_NSSAR,  Cell: nor, View: schematic
xi250 sd1 sd2 dvdd dvss net029 nor

** CLK_NONOVERLAP Instance I334 = hspiceD device xi334
** Instance of Lib: CTDTDSM_NSSAR,  Cell: CLK_NONOVERLAP, View: schematic
xi334 dvdd dvss net029 st net06 CLK_NONOVERLAP
.ends PHS_GEN_V2
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: DFF_TSPCn_SC_v2
** View name: schematic
** terminal mapping: CLK	= clk
**                   D	= d
**                   DVDD	= dvdd
**                   DVSS	= dvss
**                   Q	= q
**                   SC	= sc
.subckt type:digital DFF_TSPCn_SC_v2 clk d dvdd dvss q sc

** nch_lvt_mac Instance M26 = hspiceD device xm26
xm26 clkb clk dvss dvss nch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M22 = hspiceD device xm22
xm22 q clkb net048 dvss nch_lvt_mac l=40e-9 w=410e-9 multi=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=73.333e-3 nrs=73.333e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M18 = hspiceD device xm18
xm18 b d dvss dvss nch_lvt_mac l=40e-9 w=155e-9 multi=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=249.512e-3 nrs=249.512e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt_mac Instance M3 = hspiceD device xm3
xm3 net048 b dvss dvss nch_lvt_mac l=40e-9 w=410e-9 multi=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=73.333e-3 nrs=73.333e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** nch_lvt Instance M20 = hspiceD device m20
m20 sc net044 dvss dvss nch_lvt l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=124.756e-3 nrs=124.756e-3 sa=110e-9 sb=110e-9

** nch_lvt Instance M19 = hspiceD device m19
m19 net044 q net047 dvss nch_lvt l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=124.756e-3 nrs=124.756e-3 sa=110e-9 sb=110e-9

** nch_lvt Instance M14 = hspiceD device m14
m14 s2b d dvss dvss nch_lvt l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9

** nch_lvt Instance M16 = hspiceD device m16
m16 net047 s2b dvss dvss nch_lvt l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=124.756e-3 nrs=124.756e-3 sa=110e-9 sb=110e-9

** pch_lvt_mac Instance M29 = hspiceD device xm29
xm29 clkb clk dvdd dvdd pch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M28 = hspiceD device xm28
xm28 net049 d dvdd dvdd pch_lvt_mac l=40e-9 w=310e-9 multi=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=181.214e-3 nrs=181.214e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M27 = hspiceD device xm27
xm27 q b dvdd dvdd pch_lvt_mac l=40e-9 w=310e-9 multi=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=181.214e-3 nrs=181.214e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt_mac Instance M21 = hspiceD device xm21
xm21 b clkb net049 dvdd pch_lvt_mac l=40e-9 w=310e-9 multi=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=181.214e-3 nrs=181.214e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9 mismatchflag=0 globalflag=0 totalflag=0

** pch_lvt Instance M25 = hspiceD device m25
m25 net044 s2b dvdd dvdd pch_lvt l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=181.214e-3 nrs=181.214e-3 sa=110e-9 sb=110e-9

** pch_lvt Instance M24 = hspiceD device m24
m24 sc net044 dvdd dvdd pch_lvt l=40e-9 w=620e-9 m=1 nf=2 sd=140e-9 ad=43.4e-15 as=68.2e-15 pd=900e-9 ps=1.68e-6 nrd=86.287e-3 nrs=86.287e-3 sa=163.182e-9 sb=163.182e-9

** pch_lvt Instance M23 = hspiceD device m23
m23 net044 q dvdd dvdd pch_lvt l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=181.214e-3 nrs=181.214e-3 sa=110e-9 sb=110e-9

** pch_lvt Instance M17 = hspiceD device m17
m17 s2b d dvdd dvdd pch_lvt l=40e-9 w=240e-9 m=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9
.ends DFF_TSPCn_SC_v2
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: INVMINI
** View name: schematic
** terminal mapping: I	= i
**                   VDD	= vdd
**                   VSS	= vss
**                   ZN	= zn
.subckt type:digital INVMINI i vdd vss zn

** nch_lvt Instance M1 = hspiceD device m1
m1 zn i vss vss nch_lvt l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9

** pch_lvt Instance M0 = hspiceD device m0
m0 zn i vdd vdd pch_lvt l=40e-9 w=160e-9 m=1 nf=1 sd=140e-9 ad=17.6e-15 as=17.6e-15 pd=540e-9 ps=540e-9 nrd=374.119e-3 nrs=374.119e-3 sa=110e-9 sb=110e-9
.ends INVMINI
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: INV
** View name: schematic
** terminal mapping: I	= i
**                   VDD	= vdd
**                   VSS	= vss
**                   ZN	= zn
.subckt type:digital INV i vdd vss zn

** nch_lvt Instance M1 = hspiceD device m1
m1 zn i vss vss nch_lvt l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=249.512e-3 nrs=249.512e-3 sa=110e-9 sb=110e-9

** pch_lvt Instance M0 = hspiceD device m0
m0 zn i vdd vdd pch_lvt l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=479.34e-3 nrs=479.34e-3 sa=110e-9 sb=110e-9
.ends INV
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: TG
** View name: schematic
** terminal mapping: CN	= cn
**                   CP	= cp
**                   DVDD	= dvdd
**                   DVSS	= dvss
**                   VIN	= vin
**                   VOUT	= vout
.subckt type:digital TG cn cp dvdd dvss vin vout

** pch_lvt Instance M11 = hspiceD device m11
m11 vin cn vout dvdd pch_lvt l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=181.214e-3 nrs=181.214e-3 sa=110e-9 sb=110e-9

** nch_lvt Instance M9 = hspiceD device m9
m9 vout cp vin dvss nch_lvt l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=249.512e-3 nrs=249.512e-3 sa=110e-9 sb=110e-9
.ends TG
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: Latch_D_new_V1
** View name: schematic
** terminal mapping: D	= d
**                   DB	= db
**                   DVDD	= dvdd
**                   DVSS	= dvss
**                   Q	= q
**                   QB	= qb
**                   QBN	= qbn
**                   RST	= rst
**                   SC	= sc
.subckt type:digital Latch_D_new_V1 d db dvdd dvss q qb qbn rst sc

** pch_lvt Instance M2 = hspiceD device m2
m2 net015 net021 dvdd dvdd pch_lvt l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=479.34e-3 nrs=479.34e-3 sa=110e-9 sb=110e-9

** pch_lvt Instance M10 = hspiceD device m10
m10 qb net021 dvdd dvdd pch_lvt l=40e-9 w=620e-9 m=1 nf=1 sd=140e-9 ad=68.2e-15 as=68.2e-15 pd=1.46e-6 ps=1.46e-6 nrd=90.607e-3 nrs=90.607e-3 sa=110e-9 sb=110e-9

** pch_lvt Instance M7 = hspiceD device m7
m7 net021 rst dvdd dvdd pch_lvt l=40e-9 w=410e-9 m=1 nf=2 sd=140e-9 ad=28.7e-15 as=45.1e-15 pd=690e-9 ps=1.26e-6 nrd=228.243e-3 nrs=228.243e-3 sa=163.182e-9 sb=163.182e-9

** pch_lvt Instance M13 = hspiceD device m13
m13 q net015 dvdd dvdd pch_lvt l=40e-9 w=620e-9 m=1 nf=1 sd=140e-9 ad=68.2e-15 as=68.2e-15 pd=1.46e-6 ps=1.46e-6 nrd=90.607e-3 nrs=90.607e-3 sa=110e-9 sb=110e-9

** pch_lvt Instance M1 = hspiceD device m1
m1 net021 net015 dvdd dvdd pch_lvt l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=479.34e-3 nrs=479.34e-3 sa=110e-9 sb=110e-9

** pch_lvt Instance M6 = hspiceD device m6
m6 net015 rst dvdd dvdd pch_lvt l=40e-9 w=410e-9 m=1 nf=2 sd=140e-9 ad=28.7e-15 as=45.1e-15 pd=690e-9 ps=1.26e-6 nrd=228.243e-3 nrs=228.243e-3 sa=163.182e-9 sb=163.182e-9

** INVMINI Instance I24 = hspiceD device xi24
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVMINI, View: schematic
xi24 sc dvdd dvss net037 INVMINI

** INVMINI Instance I16 = hspiceD device xi16
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVMINI, View: schematic
xi16 sc dvdd dvss net022 INVMINI

** INVMINI Instance I23 = hspiceD device xi23
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVMINI, View: schematic
xi23 net037 dvdd dvss net027 INVMINI

** INVMINI Instance I18 = hspiceD device xi18
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVMINI, View: schematic
xi18 net022 dvdd dvss net032 INVMINI

** nch_lvt Instance M3 = hspiceD device m3
m3 net021 sc net030 dvss nch_lvt l=40e-9 w=410e-9 m=1 nf=2 sd=140e-9 ad=28.7e-15 as=45.1e-15 pd=690e-9 ps=1.26e-6 nrd=171.552e-3 nrs=171.552e-3 sa=163.182e-9 sb=163.182e-9

** nch_lvt Instance M4 = hspiceD device m4
m4 net028 d dvss dvss nch_lvt l=40e-9 w=620e-9 m=1 nf=2 sd=140e-9 ad=43.4e-15 as=68.2e-15 pd=900e-9 ps=1.68e-6 nrd=64.855e-3 nrs=64.855e-3 sa=163.182e-9 sb=163.182e-9

** nch_lvt Instance M5 = hspiceD device m5
m5 net015 sc net028 dvss nch_lvt l=40e-9 w=410e-9 m=1 nf=2 sd=140e-9 ad=28.7e-15 as=45.1e-15 pd=690e-9 ps=1.26e-6 nrd=171.552e-3 nrs=171.552e-3 sa=163.182e-9 sb=163.182e-9

** nch_lvt Instance M0 = hspiceD device m0
m0 net030 db dvss dvss nch_lvt l=40e-9 w=620e-9 m=1 nf=2 sd=140e-9 ad=43.4e-15 as=68.2e-15 pd=900e-9 ps=1.68e-6 nrd=64.855e-3 nrs=64.855e-3 sa=163.182e-9 sb=163.182e-9

** nch_lvt Instance M12 = hspiceD device m12
m12 q net015 dvss dvss nch_lvt l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=124.756e-3 nrs=124.756e-3 sa=110e-9 sb=110e-9

** nch_lvt Instance M9 = hspiceD device m9
m9 qb net021 dvss dvss nch_lvt l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=124.756e-3 nrs=124.756e-3 sa=110e-9 sb=110e-9

** INV Instance I20 = hspiceD device xi20
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INV, View: schematic
xi20 qb dvdd dvss net034 INV

** INV Instance I25 = hspiceD device xi25
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INV, View: schematic
xi25 q dvdd dvss qbn INV

** TG Instance I11 = hspiceD device xi11
** Instance of Lib: CTDTDSM_NSSAR,  Cell: TG, View: schematic
xi11 net032 net022 dvdd dvss net021 net034 TG

** TG Instance I26 = hspiceD device xi26
** Instance of Lib: CTDTDSM_NSSAR,  Cell: TG, View: schematic
xi26 net027 net037 dvdd dvss net015 qbn TG
.ends Latch_D_new_V1
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: SEQUENCER_V4
** View name: schematic
** terminal mapping: CLK	= clk
**                   D<3>	= d<3>
**                   D<2>	= d<2>
**                   D<1>	= d<1>
**                   D<0>	= d<0>
**                   DB<3>	= db<3>
**                   DB<2>	= db<2>
**                   DB<1>	= db<1>
**                   DB<0>	= db<0>
**                   DBN<3>	= dbn<3>
**                   DBN<2>	= dbn<2>
**                   DBN<1>	= dbn<1>
**                   DBN<0>	= dbn<0>
**                   DIN	= din
**                   DIP	= dip
**                   DRST	= drst
**                   DVDD	= dvdd
**                   DVSS	= dvss
**                   S<4>	= s<4>
**                   S<3>	= s<3>
**                   S<2>	= s<2>
**                   S<1>	= s<1>
**                   SC<4>	= sc<4>
**                   SC<3>	= sc<3>
**                   SC<2>	= sc<2>
**                   SC<1>	= sc<1>
**                   ST	= st
.subckt type:digital SEQUENCER_V4 clk d<3> d<2> d<1> d<0> db<3> db<2> db<1> db<0> dbn<3> dbn<2> dbn<1> dbn<0> din dip drst dvdd dvss s<4> s<3> s<2> s<1> sc<4> sc<3> sc<2> sc<1> st

** DFF_TSPCn_SC_v2 Instance I4<3:0> = hspiceD device xi4<3>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: DFF_TSPCn_SC_v2, View: schematic
xi4<3> clk st dvdd dvss s<4> sc<4> DFF_TSPCn_SC_v2

** DFF_TSPCn_SC_v2 Instance I4<3:0> = hspiceD device xi4<2>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: DFF_TSPCn_SC_v2, View: schematic
xi4<2> clk s<4> dvdd dvss s<3> sc<3> DFF_TSPCn_SC_v2

** DFF_TSPCn_SC_v2 Instance I4<3:0> = hspiceD device xi4<1>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: DFF_TSPCn_SC_v2, View: schematic
xi4<1> clk s<3> dvdd dvss s<2> sc<2> DFF_TSPCn_SC_v2

** DFF_TSPCn_SC_v2 Instance I4<3:0> = hspiceD device xi4<0>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: DFF_TSPCn_SC_v2, View: schematic
xi4<0> clk s<2> dvdd dvss s<1> sc<1> DFF_TSPCn_SC_v2

** Latch_D_new_V1 Instance I3<4:1> = hspiceD device xi3<4>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Latch_D_new_V1, View: schematic
xi3<4> dip din dvdd dvss d<3> db<3> dbn<3> drst sc<4> Latch_D_new_V1

** Latch_D_new_V1 Instance I3<4:1> = hspiceD device xi3<3>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Latch_D_new_V1, View: schematic
xi3<3> dip din dvdd dvss d<2> db<2> dbn<2> drst sc<3> Latch_D_new_V1

** Latch_D_new_V1 Instance I3<4:1> = hspiceD device xi3<2>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Latch_D_new_V1, View: schematic
xi3<2> dip din dvdd dvss d<1> db<1> dbn<1> drst sc<2> Latch_D_new_V1

** Latch_D_new_V1 Instance I3<4:1> = hspiceD device xi3<1>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Latch_D_new_V1, View: schematic
xi3<1> dip din dvdd dvss d<0> db<0> dbn<0> drst sc<1> Latch_D_new_V1
.ends SEQUENCER_V4
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: NSSAR_LOGIC_ELD_V2
** View name: schematic
** terminal mapping: CLK	= clk
**                   CLKE	= clke
**                   D<3>	= d<3>
**                   D<2>	= d<2>
**                   D<1>	= d<1>
**                   D<0>	= d<0>
**                   DB<3>	= db<3>
**                   DB<2>	= db<2>
**                   DB<1>	= db<1>
**                   DB<0>	= db<0>
**                   DBN<3>	= dbn<3>
**                   DBN<2>	= dbn<2>
**                   DBN<1>	= dbn<1>
**                   DBN<0>	= dbn<0>
**                   DIN	= din
**                   DIP	= dip
**                   DVDD	= dvdd
**                   DVSS	= dvss
**                   F1	= f1
**                   GT	= gt
**                   NS<2>	= ns<2>
**                   NS<1>	= ns<1>
**                   PHE	= phe
**                   PHS	= phs
**                   S<4>	= s<4>
**                   S<3>	= s<3>
**                   S<2>	= s<2>
**                   S<1>	= s<1>
**                   SC<4>	= sc<4>
**                   SC<3>	= sc<3>
**                   SC<2>	= sc<2>
**                   SC<1>	= sc<1>
**                   VB	= vb
.subckt type:digital NSSAR_LOGIC_ELD_V2 clk clke d<3> d<2> d<1> d<0> db<3> db<2> db<1> db<0> dbn<3> dbn<2> dbn<1> dbn<0> din dip dvdd dvss f1 gt ns<2> ns<1> phe phs s<4> s<3> s<2> s<1> sc<4> sc<3> sc<2> sc<1> vb

** INVX1 Instance I372 = hspiceD device xi372
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1, View: schematic
xi372 sd1 dvdd dvss net020 INVX1

** INVX1 Instance I377 = hspiceD device xi377
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1, View: schematic
** xi377 dvss dvss dvss net037 INVX1

** INVX1 Instance I373 = hspiceD device xi373
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1, View: schematic
xi373 net020 dvdd dvss net023 INVX1

** INVX1 Instance I379 = hspiceD device xi379
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX1, View: schematic
** xi379 dvss dvss dvss net038 INVX1

** GT_GEN Instance I355 = hspiceD device xi355
** Instance of Lib: CTDTDSM_NSSAR,  Cell: GT_GEN, View: schematic
xi355 dvdd dvss gt ns<1> phe GT_GEN

** NS2_GEN Instance I354 = hspiceD device xi354
** Instance of Lib: CTDTDSM_NSSAR,  Cell: NS2_GEN, View: schematic
xi354 dvdd dvss ns<2> net019 net023 NS2_GEN

** NS2_GEN Instance I374 = hspiceD device xi374
** Instance of Lib: CTDTDSM_NSSAR,  Cell: NS2_GEN, View: schematic
** xi374 dvss dvss net035 dvss dvss NS2_GEN

** NS2_GEN Instance I381 = hspiceD device xi381
** Instance of Lib: CTDTDSM_NSSAR,  Cell: NS2_GEN, View: schematic
** xi381 dvss dvss net036 dvss dvss NS2_GEN

** nch_lvt_mac Instance M2 = hspiceD device xm2
xm2 net011 clk dvss dvss nch_lvt_mac l=40e-9 w=360e-9 multi=1 nf=2 sd=140e-9 ad=25.2e-15 as=39.6e-15 pd=640e-9 ps=1.16e-6 nrd=150.631e-3 nrs=150.631e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=0

** INVX2 Instance I376 = hspiceD device xi376
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
** xi376 net037 dvss dvss net039 INVX2

** INVX2 Instance I380 = hspiceD device xi380
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
** xi380 net038 dvss dvss net046 INVX2

** INVX2 Instance I371 = hspiceD device xi371
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi371 st dvdd dvss net018 INVX2

** INVX2 Instance I352 = hspiceD device xi352
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi352 s<1> dvdd dvss net019 INVX2

** INVX2 Instance I364 = hspiceD device xi364
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi364 net019 dvdd dvss net017 INVX2

** INVX2 Instance I346 = hspiceD device xi346
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi346 sc<1> dvdd dvss net025 INVX2

** PHS_DELAY_V2 Instance I357 = hspiceD device xi357
** Instance of Lib: CTDTDSM_NSSAR,  Cell: PHS_DELAY_V2, View: schematic
xi357 dvdd dvss f1 sd1 sd2 vb PHS_DELAY_V2

** INVX8 Instance I369 = hspiceD device xi369
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX8, View: schematic
xi369 net022 dvdd dvss phe INVX8

** PHS_GEN_V2 Instance I358 = hspiceD device xi358
** Instance of Lib: CTDTDSM_NSSAR,  Cell: PHS_GEN_V2, View: schematic
xi358 dvdd dvss net022 sd1 sd2 st PHS_GEN_V2

** pch_lvt_mac Instance M3 = hspiceD device xm3
xm3 net011 clk dvdd dvdd pch_lvt_mac l=40e-9 w=720e-9 multi=1 nf=2 sd=140e-9 ad=50.4e-15 as=79.2e-15 pd=1e-6 ps=1.88e-6 nrd=100.204e-3 nrs=100.204e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=0 globalflag=0 totalflag=0

** SEQUENCER_V4 Instance I345 = hspiceD device xi345
** Instance of Lib: CTDTDSM_NSSAR,  Cell: SEQUENCER_V4, View: schematic
xi345 net011 d<3> d<2> d<1> d<0> db<3> db<2> db<1> db<0> dbn<3> dbn<2> dbn<1> dbn<0> din dip phe dvdd dvss s<4> s<3> s<2> s<1> sc<4> sc<3> sc<2> sc<1> st SEQUENCER_V4

** INVX4 Instance I365 = hspiceD device xi365
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi365 net017 dvdd dvss clke INVX4

** INVX4 Instance I378 = hspiceD device xi378
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
** xi378 net039 dvss dvss net047 INVX4

** INVX4 Instance I370 = hspiceD device xi370
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi370 net018 dvdd dvss phs INVX4

** INVX4 Instance I347 = hspiceD device xi347
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi347 net025 dvdd dvss ns<1> INVX4
.ends NSSAR_LOGIC_ELD_V2
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: NSSAR4B_wELD_V2A
** View name: schematic
** terminal mapping: AVDD	= avdd
**                   AVSS	= avss
**                   BOTEP<3>	= botep<3>
**                   BOTEP<2>	= botep<2>
**                   BOTEP<1>	= botep<1>
**                   BOTEP<0>	= botep<0>
**                   BOTP<3>	= botp<3>
**                   BOTP<2>	= botp<2>
**                   BOTP<1>	= botp<1>
**                   BOTP<0>	= botp<0>
**                   CLK	= clk
**                   CLKB	= clkb
**                   D<3>	= d<3>
**                   D<2>	= d<2>
**                   D<1>	= d<1>
**                   D<0>	= d<0>
**                   DB<3>	= db<3>
**                   DB<2>	= db<2>
**                   DB<1>	= db<1>
**                   DB<0>	= db<0>
**                   DIN	= din
**                   DIP	= dip
**                   DOUT<3>	= dout<3>
**                   DOUT<2>	= dout<2>
**                   DOUT<1>	= dout<1>
**                   DOUT<0>	= dout<0>
**                   DVDD	= dvdd
**                   DVSS	= dvss
**                   F1	= f1
**                   GT	= gt
**                   NS<2>	= ns<2>
**                   NS<1>	= ns<1>
**                   NSBS<2>	= nsbs<2>
**                   NSBS<1>	= nsbs<1>
**                   PHSBUF	= phsbuf
**                   S<4>	= s<4>
**                   S<3>	= s<3>
**                   S<2>	= s<2>
**                   S<1>	= s<1>
**                   SC<4>	= sc<4>
**                   SC<3>	= sc<3>
**                   SC<2>	= sc<2>
**                   SC<1>	= sc<1>
**                   VB_CLK	= vb_clk
**                   VB_SAMP	= vb_samp
**                   VELD	= veld
**                   VIN	= vin
**                   VINTN<2>	= vintn<2>
**                   VINTN<1>	= vintn<1>
**                   VINTN<0>	= vintn<0>
**                   VINTP<2>	= vintp<2>
**                   VINTP<1>	= vintp<1>
**                   VINTP<0>	= vintp<0>
**                   VIP	= vip
**                   VREF	= vref
**                   VREFN	= vrefn
**                   VREFP	= vrefp
**                   VSW	= vsw
.subckt type:mixed NSSAR4B_wELD_V2A avdd avss botep<3> botep<2> botep<1> botep<0> botp<3> botp<2> botp<1> botp<0> clk clkb d<3> d<2> d<1> d<0> db<3> db<2> db<1> db<0> din dip dout<3> dout<2> dout<1> dout<0> dvdd dvss f1 gt ns<2> ns<1> nsbs<2> nsbs<1> phsbuf s<4> s<3> s<2> s<1> sc<4> sc<3> sc<2> sc<1> vb_clk vb_samp veld vin vintn<2> vintn<1> vintn<0> vintp<2> vintp<1> vintp<0> vip vref vrefn vrefp vsw

** INVX2 Instance I4<1:2> = hspiceD device xi4<1>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi4<1> ns<2> avdd avss net011<0> INVX2

** INVX2 Instance I4<1:2> = hspiceD device xi4<2>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi4<2> ns<1> avdd avss net011<1> INVX2

** INVX2 Instance I198 = hspiceD device xi198
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX2, View: schematic
xi198 net07 avdd avss net06 INVX2

** INVX4 Instance I197<1:2> = hspiceD device xi197<1>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi197<1> net011<0> avdd avss net012<0> INVX4

** INVX4 Instance I197<1:2> = hspiceD device xi197<2>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi197<2> net011<1> avdd avss net012<1> INVX4

** INVX4 Instance I199 = hspiceD device xi199
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi199 net06 avdd avss phs INVX4

** nch_lvt_mac Instance M0 = hspiceD device xm0
xm0 avss avdd avss avss nch_lvt_mac l=40e-9 w=2.325e-6 multi=1 nf=15 sd=140e-9 ad=168.95e-15 as=168.95e-15 pd=4.66e-6 ps=4.66e-6 nrd=17.911e-3 nrs=17.911e-3 sa=675.603e-9 sb=675.603e-9 sa1=269.666e-9 sa2=545.885e-9 sa3=818.344e-9 sa4=642.475e-9 sb1=269.666e-9 sb2=545.885e-9 sb3=818.344e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=234.015e-9 spba=162.859e-9 sapb=280.924e-9 spba1=164.658e-9 mismatchflag=0 globalflag=0 totalflag=1

** LOGIC_DOUT_V2 Instance I177 = hspiceD device xi177
** Instance of Lib: CTDTDSM_NSSAR,  Cell: LOGIC_DOUT_V2, View: schematic
xi177 clke dbn<3> dbn<2> dbn<1> dbn<0> dop<3> dop<2> dop<1> dop<0> don<3> don<2> don<1> don<0> dout<3> dout<2> dout<1> dout<0> dvdd dvss LOGIC_DOUT_V2

** SC4B_wELD_V2 Instance I172 = hspiceD device xi172
** Instance of Lib: CTDTDSM_NSSAR,  Cell: SC4B_wELD_V2, View: schematic
xi172 avdd avss botn<3> botn<2> botn<1> botn<0> boten<3> boten<2> boten<1> boten<0> d<3> db<2> db<1> db<0> deb<3> deb<2> deb<1> deb<0> net012<0> net012<1> net38<0> net38<1> phs veld vin vintn<2> vintn<1> vintn<0> vref vrefn vrefp net03 SC4B_wELD_V2

** SC4B_wELD_V2 Instance I170 = hspiceD device xi170
** Instance of Lib: CTDTDSM_NSSAR,  Cell: SC4B_wELD_V2, View: schematic
xi170 avdd avss botp<3> botp<2> botp<1> botp<0> botep<3> botep<2> botep<1> botep<0> db<3> d<2> d<1> d<0> de<3> de<2> de<1> de<0> net012<0> net012<1> nsbs<2> nsbs<1> phs veld vip vintp<2> vintp<1> vintp<0> vref vrefn vrefp vsw SC4B_wELD_V2

** LOGIC_ELD Instance I176 = hspiceD device xi176
** Instance of Lib: CTDTDSM_NSSAR,  Cell: LOGIC_ELD, View: schematic
xi176 deb<3> deb<2> deb<1> deb<0> don<3> don<2> don<1> don<0> phe dvdd dvss LOGIC_ELD

** LOGIC_ELD Instance I173 = hspiceD device xi173
** Instance of Lib: CTDTDSM_NSSAR,  Cell: LOGIC_ELD, View: schematic
xi173 de<3> de<2> de<1> de<0> dop<3> dop<2> dop<1> dop<0> phe dvdd dvss LOGIC_ELD

** CLK_COMP Instance I189 = hspiceD device xi189
** Instance of Lib: CTDTDSM_NSSAR,  Cell: CLK_COMP, View: schematic
xi189 clk clkb din dip gt vb_clk avdd vintp<0> vintn<0> vintn<2> vintn<1> vintp<2> vintp<1> avss CLK_COMP

** pch_lvt_mac Instance M1 = hspiceD device xm1
xm1 avss avdd avss avdd pch_lvt_mac l=40e-9 w=3.075e-6 multi=1 nf=15 sd=140e-9 ad=223.45e-15 as=223.45e-15 pd=5.46e-6 ps=5.46e-6 nrd=29.225e-3 nrs=29.225e-3 sa=675.603e-9 sb=675.603e-9 sa1=269.666e-9 sa2=545.885e-9 sa3=818.344e-9 sa4=642.475e-9 sb1=269.666e-9 sb2=545.885e-9 sb3=818.344e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=234.015e-9 spba=162.859e-9 sapb=280.924e-9 spba1=164.658e-9 mismatchflag=0 globalflag=0 totalflag=1

** BUF248 Instance I206 = hspiceD device xi206
** Instance of Lib: CTDTDSM_NSSAR,  Cell: BUF248, View: schematic
xi206 avdd avss phs phsbuf net05 BUF248

** NSSAR_LOGIC_ELD_V2 Instance I174 = hspiceD device xi174
** Instance of Lib: CTDTDSM_NSSAR,  Cell: NSSAR_LOGIC_ELD_V2, View: schematic
xi174 clkb clke d<3> d<2> d<1> d<0> db<3> db<2> db<1> db<0> dbn<3> dbn<2> dbn<1> dbn<0> din dip dvdd dvss f1 gt ns<2> ns<1> phe net07 s<4> s<3> s<2> s<1> sc<4> sc<3> sc<2> sc<1> vb_samp NSSAR_LOGIC_ELD_V2
.ends NSSAR4B_wELD_V2A
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: OTA_FF_2s_v3
** View name: schematic
** terminal mapping: AVDD	= avdd
**                   AVSS	= avss
**                   IBIN	= ibin
**                   IN	= in
**                   IP	= ip
**                   ON	= on
**                   OP	= op
**                   VCAS	= vcas
**                   VCMI	= vcmi
.subckt type:analog OTA_FF_2s_v3 avdd avss ibin in ip on op vcas vcmi

** pch_lvt Instance M35 = hspiceD device m35
m35 net057 ibin avdd avdd pch_lvt l=120e-9 w=8e-6 m=1 nf=2 sd=140e-9 ad=560e-15 as=880e-15 pd=8.28e-6 ps=16.44e-6 nrd=5.681e-3 nrs=5.681e-3 sa=183.667e-9 sb=183.667e-9

** pch_lvt Instance M34 = hspiceD device m34
m34 cmfb vcmo net057 net057 pch_lvt l=120e-9 w=4e-6 m=1 nf=1 sd=140e-9 ad=440e-15 as=440e-15 pd=8.22e-6 ps=8.22e-6 nrd=11.93e-3 nrs=11.93e-3 sa=110e-9 sb=110e-9

** pch_lvt Instance M33 = hspiceD device m33
m33 net044 vcmi net057 net057 pch_lvt l=120e-9 w=4e-6 m=1 nf=1 sd=140e-9 ad=440e-15 as=440e-15 pd=8.22e-6 ps=8.22e-6 nrd=11.93e-3 nrs=11.93e-3 sa=110e-9 sb=110e-9

** pch_lvt Instance M62 = hspiceD device m62
m62 avdd ibin avdd avdd pch_lvt l=120e-9 w=16e-6 m=1 nf=8 sd=140e-9 ad=1.12e-12 as=1.28e-12 pd=17.12e-6 ps=21.28e-6 nrd=2.742e-3 nrs=2.742e-3 sa=541.635e-9 sb=541.635e-9

** pch_lvt Instance M54 = hspiceD device m54
m54 net59 net59 net59 net59 pch_lvt l=120e-9 w=12e-6 m=1 nf=6 sd=140e-9 ad=840e-15 as=1e-12 pd=12.84e-6 ps=17e-6 nrd=3.67e-3 nrs=3.67e-3 sa=431.137e-9 sb=431.137e-9

** pch_lvt Instance M43 = hspiceD device m43
m43 net5 net5 net5 net5 pch_lvt l=120e-9 w=12e-6 m=1 nf=6 sd=140e-9 ad=840e-15 as=1e-12 pd=12.84e-6 ps=17e-6 nrd=3.67e-3 nrs=3.67e-3 sa=431.137e-9 sb=431.137e-9

** pch_lvt Instance M53 = hspiceD device m53
m53 avdd ibin avdd avdd pch_lvt l=120e-9 w=12e-6 m=1 nf=6 sd=140e-9 ad=840e-15 as=1e-12 pd=12.84e-6 ps=17e-6 nrd=3.67e-3 nrs=3.67e-3 sa=431.137e-9 sb=431.137e-9

** pch_lvt Instance M57 = hspiceD device m57
m57 avdd ibin avdd avdd pch_lvt l=120e-9 w=16e-6 m=1 nf=8 sd=140e-9 ad=1.12e-12 as=1.28e-12 pd=17.12e-6 ps=21.28e-6 nrd=2.742e-3 nrs=2.742e-3 sa=541.635e-9 sb=541.635e-9

** pch_lvt Instance M37 = hspiceD device m37
m37 op in net59 net59 pch_lvt l=120e-9 w=24e-6 m=1 nf=6 sd=140e-9 ad=1.68e-12 as=2e-12 pd=24.84e-6 ps=33e-6 nrd=1.835e-3 nrs=1.835e-3 sa=431.137e-9 sb=431.137e-9

** pch_lvt Instance M23 = hspiceD device m23
m23 on ip net59 net59 pch_lvt l=120e-9 w=24e-6 m=1 nf=6 sd=140e-9 ad=1.68e-12 as=2e-12 pd=24.84e-6 ps=33e-6 nrd=1.835e-3 nrs=1.835e-3 sa=431.137e-9 sb=431.137e-9

** pch_lvt Instance M63 = hspiceD device m63
m63 net75 vcas net75 net75 pch_lvt l=120e-9 w=16e-6 m=1 nf=8 sd=140e-9 ad=1.12e-12 as=1.28e-12 pd=17.12e-6 ps=21.28e-6 nrd=2.742e-3 nrs=2.742e-3 sa=541.635e-9 sb=541.635e-9

** pch_lvt Instance M58 = hspiceD device m58
m58 net057 vcmo net057 net057 pch_lvt l=120e-9 w=4e-6 m=1 nf=2 sd=140e-9 ad=280e-15 as=440e-15 pd=4.28e-6 ps=8.44e-6 nrd=11.361e-3 nrs=11.361e-3 sa=183.667e-9 sb=183.667e-9

** pch_lvt Instance M36 = hspiceD device m36
m36 net59 ibin avdd avdd pch_lvt l=120e-9 w=48e-6 m=1 nf=12 sd=140e-9 ad=3.36e-12 as=3.68e-12 pd=49.68e-6 ps=57.84e-6 nrd=911e-6 nrs=911e-6 sa=749.116e-9 sb=749.116e-9

** pch_lvt Instance M41 = hspiceD device m41
m41 avdd ibin avdd avdd pch_lvt l=120e-9 w=12e-6 m=1 nf=6 sd=140e-9 ad=840e-15 as=1e-12 pd=12.84e-6 ps=17e-6 nrd=3.67e-3 nrs=3.67e-3 sa=431.137e-9 sb=431.137e-9

** pch_lvt Instance M16 = hspiceD device m16
m16 ibin vcas net75 net75 pch_lvt l=120e-9 w=8e-6 m=1 nf=2 sd=140e-9 ad=560e-15 as=880e-15 pd=8.28e-6 ps=16.44e-6 nrd=5.681e-3 nrs=5.681e-3 sa=183.667e-9 sb=183.667e-9

** pch_lvt Instance M50 = hspiceD device m50
m50 on1 ip net5 net5 pch_lvt l=120e-9 w=8e-6 m=1 nf=2 sd=140e-9 ad=560e-15 as=880e-15 pd=8.28e-6 ps=16.44e-6 nrd=5.681e-3 nrs=5.681e-3 sa=183.667e-9 sb=183.667e-9

** pch_lvt Instance M48 = hspiceD device m48
m48 net057 vcmi net057 net057 pch_lvt l=120e-9 w=12e-6 m=1 nf=6 sd=140e-9 ad=840e-15 as=1e-12 pd=12.84e-6 ps=17e-6 nrd=3.67e-3 nrs=3.67e-3 sa=431.137e-9 sb=431.137e-9

** pch_lvt Instance M6 = hspiceD device m6
m6 net75 ibin avdd avdd pch_lvt l=120e-9 w=8e-6 m=1 nf=2 sd=140e-9 ad=560e-15 as=880e-15 pd=8.28e-6 ps=16.44e-6 nrd=5.681e-3 nrs=5.681e-3 sa=183.667e-9 sb=183.667e-9

** pch_lvt Instance M4 = hspiceD device m4
m4 net5 ibin avdd avdd pch_lvt l=120e-9 w=16e-6 m=1 nf=4 sd=140e-9 ad=1.12e-12 as=1.44e-12 pd=16.56e-6 ps=24.72e-6 nrd=2.774e-3 nrs=2.774e-3 sa=313.488e-9 sb=313.488e-9

** pch_lvt Instance M20 = hspiceD device m20
m20 op1 in net5 net5 pch_lvt l=120e-9 w=8e-6 m=1 nf=2 sd=140e-9 ad=560e-15 as=880e-15 pd=8.28e-6 ps=16.44e-6 nrd=5.681e-3 nrs=5.681e-3 sa=183.667e-9 sb=183.667e-9

** nch_lvt Instance M11 = hspiceD device m11
m11 avss on1 avss avss nch_lvt l=1e-6 w=8e-6 m=1 nf=4 sd=160e-9 ad=640e-15 as=760e-15 pd=8.64e-6 ps=12.76e-6 nrd=3.854e-3 nrs=3.854e-3 sa=933.634e-9 sb=933.634e-9

** nch_lvt Instance M10 = hspiceD device m10
m10 avss op1 avss avss nch_lvt l=1e-6 w=8e-6 m=1 nf=4 sd=160e-9 ad=640e-15 as=760e-15 pd=8.64e-6 ps=12.76e-6 nrd=3.854e-3 nrs=3.854e-3 sa=933.634e-9 sb=933.634e-9

** nch_lvt Instance M1 = hspiceD device m1
m1 avss avss avss avss nch_lvt l=120e-9 w=6e-6 m=1 nf=6 sd=140e-9 ad=420e-15 as=500e-15 pd=6.84e-6 ps=9e-6 nrd=5.848e-3 nrs=5.848e-3 sa=431.137e-9 sb=431.137e-9

** nch_lvt Instance M0 = hspiceD device m0
m0 avss cmfb avss avss nch_lvt l=120e-9 w=6e-6 m=1 nf=6 sd=140e-9 ad=420e-15 as=500e-15 pd=6.84e-6 ps=9e-6 nrd=5.848e-3 nrs=5.848e-3 sa=431.137e-9 sb=431.137e-9

** nch_lvt Instance M66 = hspiceD device m66
m66 avss on1 avss avss nch_lvt l=120e-9 w=2e-6 m=1 nf=2 sd=140e-9 ad=140e-15 as=220e-15 pd=2.28e-6 ps=4.44e-6 nrd=17.078e-3 nrs=17.078e-3 sa=183.667e-9 sb=183.667e-9

** nch_lvt Instance M64 = hspiceD device m64
m64 avss op1 avss avss nch_lvt l=120e-9 w=2e-6 m=1 nf=2 sd=140e-9 ad=140e-15 as=220e-15 pd=2.28e-6 ps=4.44e-6 nrd=17.078e-3 nrs=17.078e-3 sa=183.667e-9 sb=183.667e-9

** nch_lvt Instance M55 = hspiceD device m55
m55 avss avss avss avss nch_lvt l=120e-9 w=2e-6 m=1 nf=2 sd=140e-9 ad=140e-15 as=220e-15 pd=2.28e-6 ps=4.44e-6 nrd=17.078e-3 nrs=17.078e-3 sa=183.667e-9 sb=183.667e-9

** nch_lvt Instance M21 = hspiceD device m21
m21 on op1 avss avss nch_lvt l=120e-9 w=6e-6 m=1 nf=6 sd=140e-9 ad=420e-15 as=500e-15 pd=6.84e-6 ps=9e-6 nrd=5.848e-3 nrs=5.848e-3 sa=431.137e-9 sb=431.137e-9

** nch_lvt Instance M19 = hspiceD device m19
m19 op on1 avss avss nch_lvt l=120e-9 w=6e-6 m=1 nf=6 sd=140e-9 ad=420e-15 as=500e-15 pd=6.84e-6 ps=9e-6 nrd=5.848e-3 nrs=5.848e-3 sa=431.137e-9 sb=431.137e-9

** nch_lvt Instance M29 = hspiceD device m29
m29 cmfb cmfb avss avss nch_lvt l=120e-9 w=1e-6 m=1 nf=1 sd=140e-9 ad=110e-15 as=110e-15 pd=2.22e-6 ps=2.22e-6 nrd=32.852e-3 nrs=32.852e-3 sa=110e-9 sb=110e-9

** nch_lvt Instance M14 = hspiceD device m14
m14 op1 cmfb avss avss nch_lvt l=120e-9 w=2e-6 m=1 nf=2 sd=140e-9 ad=140e-15 as=220e-15 pd=2.28e-6 ps=4.44e-6 nrd=17.078e-3 nrs=17.078e-3 sa=183.667e-9 sb=183.667e-9

** nch_lvt Instance M13 = hspiceD device m13
m13 on1 cmfb avss avss nch_lvt l=120e-9 w=2e-6 m=1 nf=2 sd=140e-9 ad=140e-15 as=220e-15 pd=2.28e-6 ps=4.44e-6 nrd=17.078e-3 nrs=17.078e-3 sa=183.667e-9 sb=183.667e-9

** nch_lvt Instance M59 = hspiceD device m59
m59 avss net044 avss avss nch_lvt l=120e-9 w=2e-6 m=1 nf=2 sd=140e-9 ad=140e-15 as=220e-15 pd=2.28e-6 ps=4.44e-6 nrd=17.078e-3 nrs=17.078e-3 sa=183.667e-9 sb=183.667e-9

** nch_lvt Instance M30 = hspiceD device m30
m30 net044 net044 avss avss nch_lvt l=120e-9 w=1e-6 m=1 nf=1 sd=140e-9 ad=110e-15 as=110e-15 pd=2.22e-6 ps=2.22e-6 nrd=32.852e-3 nrs=32.852e-3 sa=110e-9 sb=110e-9

** nch_lvt Instance M56 = hspiceD device m56
m56 avss cmfb avss avss nch_lvt l=120e-9 w=2e-6 m=1 nf=2 sd=140e-9 ad=140e-15 as=220e-15 pd=2.28e-6 ps=4.44e-6 nrd=17.078e-3 nrs=17.078e-3 sa=183.667e-9 sb=183.667e-9

** cfmom Instance C4 = hspiceD device xc4
xc4 on vcmo avss cfmom nr=24 lr=3.8e-6 w=100e-9 s=100e-9 stm=2 spm=6 multi=1 ftip=140e-9 dmflag=0

** cfmom Instance C5 = hspiceD device xc5
xc5 op vcmo avss cfmom nr=24 lr=3.8e-6 w=100e-9 s=100e-9 stm=2 spm=6 multi=1 ftip=140e-9 dmflag=0
**Series configuration of R12
xr12  vcmo op avss  rppolywo_m lr=20e-6 wr=1e-6 multi=1 m=1
**End of R12

**Series configuration of R13
xr13  on vcmo avss  rppolywo_m lr=20e-6 wr=1e-6 multi=1 m=1
**End of R13

.ends OTA_FF_2s_v3
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: INT_V3
** View name: schematic
** terminal mapping: CS<2>	= cs<2>
**                   CS<1>	= cs<1>
**                   CS<0>	= cs<0>
**                   C_SEL<2>	= c_sel<2>
**                   C_SEL<1>	= c_sel<1>
**                   C_SEL<0>	= c_sel<0>
**                   IB	= ib
**                   VCAS	= vcas
**                   VCMI	= vcmi
**                   VDD	= vdd
**                   VIN+	= _net0
**                   VIN-	= _net1
**                   VOUT+	= _net3
**                   VOUT-	= _net2
**                   VSS	= vss
.subckt type:analog INT_V3 cs<2> cs<1> cs<0> c_sel<2> c_sel<1> c_sel<0> ib vcas vcmi vdd _net0 _net1 _net3 _net2 vss

** nch_lvt_mac Instance M8 = hspiceD device xm8
xm8 net035 c_sel<0> _net0 vss nch_lvt_mac l=40e-9 w=2e-6 multi=1 nf=2 sd=140e-9 ad=140e-15 as=220e-15 pd=2.28e-6 ps=4.44e-6 nrd=17.078e-3 nrs=17.078e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=1 globalflag=0 totalflag=0

** nch_lvt_mac Instance M7 = hspiceD device xm7
xm7 net028 c_sel<1> _net0 vss nch_lvt_mac l=40e-9 w=4e-6 multi=1 nf=4 sd=140e-9 ad=280e-15 as=360e-15 pd=4.56e-6 ps=6.72e-6 nrd=8.712e-3 nrs=8.712e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=1 globalflag=0 totalflag=0

** nch_lvt_mac Instance M6 = hspiceD device xm6
xm6 net037 c_sel<2> _net0 vss nch_lvt_mac l=40e-9 w=8e-6 multi=1 nf=8 sd=140e-9 ad=560e-15 as=640e-15 pd=9.12e-6 ps=11.28e-6 nrd=4.401e-3 nrs=4.401e-3 sa=420.901e-9 sb=420.901e-9 sa1=218.025e-9 sa2=376.982e-9 sa3=612.324e-9 sa4=401.816e-9 sb1=218.025e-9 sb2=376.982e-9 sb3=612.324e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=200.193e-9 spba=164.62e-9 sapb=257.228e-9 spba1=166.439e-9 mismatchflag=1 globalflag=0 totalflag=0

** nch_lvt_mac Instance M2 = hspiceD device xm2
xm2 cs<0> c_sel<0> _net1 vss nch_lvt_mac l=40e-9 w=2e-6 multi=1 nf=2 sd=140e-9 ad=140e-15 as=220e-15 pd=2.28e-6 ps=4.44e-6 nrd=17.078e-3 nrs=17.078e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9 mismatchflag=1 globalflag=0 totalflag=0

** nch_lvt_mac Instance M1 = hspiceD device xm1
xm1 cs<1> c_sel<1> _net1 vss nch_lvt_mac l=40e-9 w=4e-6 multi=1 nf=4 sd=140e-9 ad=280e-15 as=360e-15 pd=4.56e-6 ps=6.72e-6 nrd=8.712e-3 nrs=8.712e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9 mismatchflag=1 globalflag=0 totalflag=0

** nch_lvt_mac Instance M0 = hspiceD device xm0
xm0 cs<2> c_sel<2> _net1 vss nch_lvt_mac l=40e-9 w=8e-6 multi=1 nf=8 sd=140e-9 ad=560e-15 as=640e-15 pd=9.12e-6 ps=11.28e-6 nrd=4.401e-3 nrs=4.401e-3 sa=420.901e-9 sb=420.901e-9 sa1=218.025e-9 sa2=376.982e-9 sa3=612.324e-9 sa4=401.816e-9 sb1=218.025e-9 sb2=376.982e-9 sb3=612.324e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=200.193e-9 spba=164.62e-9 sapb=257.228e-9 spba1=166.439e-9 mismatchflag=1 globalflag=0 totalflag=0

** OTA_FF_2s_v3 Instance I181 = hspiceD device xi181
** Instance of Lib: CTDTDSM_NSSAR,  Cell: OTA_FF_2s_v3, View: schematic
xi181 vdd vss ib _net1 _net0 _net2 _net3 vcas vcmi OTA_FF_2s_v3

** cfmom Instance C11 = hspiceD device xc11
xc11 vdd vss vdd cfmom nr=30 lr=5e-6 w=100e-9 s=100e-9 stm=2 spm=6 multi=14 ftip=140e-9 dmflag=0

** cfmom Instance C6 = hspiceD device xc6
xc6 cs<0> _net3 vdd cfmom nr=30 lr=5e-6 w=100e-9 s=100e-9 stm=2 spm=6 multi=1 ftip=140e-9 dmflag=0

** cfmom Instance C5 = hspiceD device xc5
xc5 cs<1> _net3 vdd cfmom nr=30 lr=5e-6 w=100e-9 s=100e-9 stm=2 spm=6 multi=2 ftip=140e-9 dmflag=0

** cfmom Instance C1 = hspiceD device xc1
xc1 cs<2> _net3 vdd cfmom nr=30 lr=5e-6 w=100e-9 s=100e-9 stm=2 spm=6 multi=4 ftip=140e-9 dmflag=0

** cfmom Instance C0 = hspiceD device xc0
xc0 _net1 _net3 vdd cfmom nr=30 lr=5e-6 w=100e-9 s=100e-9 stm=2 spm=6 multi=11 ftip=140e-9 dmflag=0

** cfmom Instance C10 = hspiceD device xc10
xc10 _net0 _net2 vdd cfmom nr=30 lr=5e-6 w=100e-9 s=100e-9 stm=2 spm=6 multi=11 ftip=140e-9 dmflag=0

** cfmom Instance C9 = hspiceD device xc9
xc9 net028 _net2 vdd cfmom nr=30 lr=5e-6 w=100e-9 s=100e-9 stm=2 spm=6 multi=2 ftip=140e-9 dmflag=0

** cfmom Instance C8 = hspiceD device xc8
xc8 net035 _net2 vdd cfmom nr=30 lr=5e-6 w=100e-9 s=100e-9 stm=2 spm=6 multi=1 ftip=140e-9 dmflag=0

** cfmom Instance C7 = hspiceD device xc7
xc7 net037 _net2 vdd cfmom nr=30 lr=5e-6 w=100e-9 s=100e-9 stm=2 spm=6 multi=4 ftip=140e-9 dmflag=0
.ends INT_V3
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: INVX12
** View name: schematic
** terminal mapping: I	= i
**                   VDD	= vdd
**                   VSS	= vss
**                   ZN	= zn
.subckt type:digital INVX12 i vdd vss zn

** nch_lvt Instance M1 = hspiceD device m1
m1 zn i vss vss nch_lvt l=40e-9 w=1.84e-6 m=1 nf=8 sd=140e-9 ad=128.8e-15 as=147.2e-15 pd=2.96e-6 ps=3.58e-6 nrd=49.595e-3 nrs=49.595e-3 sa=420.901e-9 sb=420.901e-9

** pch_lvt Instance M0 = hspiceD device m0
m0 zn i vdd vdd pch_lvt l=40e-9 w=2.48e-6 m=1 nf=8 sd=140e-9 ad=173.6e-15 as=198.4e-15 pd=3.6e-6 ps=4.38e-6 nrd=20.827e-3 nrs=20.827e-3 sa=420.901e-9 sb=420.901e-9
.ends INVX12
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: Retiming_Latch_common
** View name: schematic
** terminal mapping: CLKB	= clkb
**                   D	= d
**                   DO	= do
**                   DOB	= dob
**                   VDD_D	= vdd_d
**                   VSS_D	= vss_d
.subckt type:analog Retiming_Latch_common clkb d do dob vdd_d vss_d

** pch_lvt_mac Instance M39 = hspiceD device xm39
xm39 net025 net017 vdd_d vdd_d pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M31 = hspiceD device xm31
xm31 clk clkb vdd_d vdd_d pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M33 = hspiceD device xm33
xm33 vdd_d vss_d vdd_d vdd_d pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M16 = hspiceD device xm16
xm16 do dob vdd_d vdd_d pch_lvt_mac l=40e-9 w=320e-9 multi=1 nf=1 sd=140e-9 ad=35.2e-15 as=35.2e-15 pd=860e-9 ps=860e-9 nrd=187.059e-3 nrs=187.059e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M26 = hspiceD device xm26
xm26 clkn clk vdd_d vdd_d pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M12 = hspiceD device xm12
xm12 dob do vdd_d vdd_d pch_lvt_mac l=40e-9 w=320e-9 multi=1 nf=1 sd=140e-9 ad=35.2e-15 as=35.2e-15 pd=860e-9 ps=860e-9 nrd=187.059e-3 nrs=187.059e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M1 = hspiceD device xm1
xm1 do clkn net36 vdd_d pch_lvt_mac l=40e-9 w=640e-9 multi=1 nf=1 sd=140e-9 ad=70.4e-15 as=70.4e-15 pd=1.5e-6 ps=1.5e-6 nrd=93.53e-3 nrs=93.53e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M0 = hspiceD device xm0
xm0 net36 net025 vdd_d vdd_d pch_lvt_mac l=40e-9 w=640e-9 multi=1 nf=1 sd=140e-9 ad=70.4e-15 as=70.4e-15 pd=1.5e-6 ps=1.5e-6 nrd=93.53e-3 nrs=93.53e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M11 = hspiceD device xm11
xm11 dob clkn net39 vdd_d pch_lvt_mac l=40e-9 w=640e-9 multi=1 nf=1 sd=140e-9 ad=70.4e-15 as=70.4e-15 pd=1.5e-6 ps=1.5e-6 nrd=93.53e-3 nrs=93.53e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M10 = hspiceD device xm10
xm10 net39 net017 vdd_d vdd_d pch_lvt_mac l=40e-9 w=640e-9 multi=1 nf=1 sd=140e-9 ad=70.4e-15 as=70.4e-15 pd=1.5e-6 ps=1.5e-6 nrd=93.53e-3 nrs=93.53e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M37 = hspiceD device xm37
xm37 net017 d vdd_d vdd_d pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M35 = hspiceD device xm35
xm35 vdd_d vss_d vdd_d vdd_d pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M38 = hspiceD device xm38
xm38 net025 net017 vss_d vss_d nch_lvt_mac l=40e-9 w=320e-9 multi=1 nf=1 sd=140e-9 ad=35.2e-15 as=35.2e-15 pd=860e-9 ps=860e-9 nrd=128.78e-3 nrs=128.78e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M30 = hspiceD device xm30
xm30 clk clkb vss_d vss_d nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M17 = hspiceD device xm17
xm17 do clk net37 vss_d nch_lvt_mac l=40e-9 w=320e-9 multi=1 nf=1 sd=140e-9 ad=35.2e-15 as=35.2e-15 pd=860e-9 ps=860e-9 nrd=128.78e-3 nrs=128.78e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M32 = hspiceD device xm32
xm32 vdd_d vss_d vdd_d vss_d nch_lvt_mac l=40e-9 w=320e-9 multi=1 nf=1 sd=140e-9 ad=35.2e-15 as=35.2e-15 pd=860e-9 ps=860e-9 nrd=128.78e-3 nrs=128.78e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M27 = hspiceD device xm27
xm27 clkn clk vss_d vss_d nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M13 = hspiceD device xm13
xm13 dob clk net38 vss_d nch_lvt_mac l=40e-9 w=320e-9 multi=1 nf=1 sd=140e-9 ad=35.2e-15 as=35.2e-15 pd=860e-9 ps=860e-9 nrd=128.78e-3 nrs=128.78e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M36 = hspiceD device xm36
xm36 net017 d vss_d vss_d nch_lvt_mac l=40e-9 w=320e-9 multi=1 nf=1 sd=140e-9 ad=35.2e-15 as=35.2e-15 pd=860e-9 ps=860e-9 nrd=128.78e-3 nrs=128.78e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M21 = hspiceD device xm21
xm21 dob do vss_d vss_d nch_lvt_mac l=40e-9 w=160e-9 multi=1 nf=1 sd=140e-9 ad=17.6e-15 as=17.6e-15 pd=540e-9 ps=540e-9 nrd=257.561e-3 nrs=257.561e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M20 = hspiceD device xm20
xm20 do dob vss_d vss_d nch_lvt_mac l=40e-9 w=160e-9 multi=1 nf=1 sd=140e-9 ad=17.6e-15 as=17.6e-15 pd=540e-9 ps=540e-9 nrd=257.561e-3 nrs=257.561e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M19 = hspiceD device xm19
xm19 net38 net017 vss_d vss_d nch_lvt_mac l=40e-9 w=320e-9 multi=1 nf=1 sd=140e-9 ad=35.2e-15 as=35.2e-15 pd=860e-9 ps=860e-9 nrd=128.78e-3 nrs=128.78e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M34 = hspiceD device xm34
xm34 vdd_d vss_d vdd_d vss_d nch_lvt_mac l=40e-9 w=320e-9 multi=1 nf=1 sd=140e-9 ad=35.2e-15 as=35.2e-15 pd=860e-9 ps=860e-9 nrd=128.78e-3 nrs=128.78e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M18 = hspiceD device xm18
xm18 net37 net025 vss_d vss_d nch_lvt_mac l=40e-9 w=320e-9 multi=1 nf=1 sd=140e-9 ad=35.2e-15 as=35.2e-15 pd=860e-9 ps=860e-9 nrd=128.78e-3 nrs=128.78e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9
.ends Retiming_Latch_common
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: DAC
** View name: schematic
** terminal mapping: DN	= dn
**                   DP	= dp
**                   ION	= ion
**                   IOP	= iop
**                   VREFN	= vrefn
**                   VREFP	= vrefp
**                   VSS_DAC	= vss_dac
.subckt type:analog DAC dn dp ion iop vrefn vrefp vss_dac

** nch_lvt_mac Instance M11 = hspiceD device xm11
xm11 net09 dn vrefn vss_dac nch_lvt_mac l=40e-9 w=200e-9 multi=1 nf=1 sd=140e-9 ad=22e-15 as=22e-15 pd=620e-9 ps=620e-9 nrd=321.951e-3 nrs=321.951e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M7 = hspiceD device xm7
xm7 net016 dp vrefn vss_dac nch_lvt_mac l=40e-9 w=200e-9 multi=1 nf=1 sd=140e-9 ad=22e-15 as=22e-15 pd=620e-9 ps=620e-9 nrd=321.951e-3 nrs=321.951e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M1 = hspiceD device xm1
xm1 net018 net016 vrefn vss_dac nch_lvt_mac l=40e-9 w=400e-9 multi=1 nf=1 sd=140e-9 ad=44e-15 as=44e-15 pd=1.02e-6 ps=1.02e-6 nrd=71.545e-3 nrs=71.545e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M0 = hspiceD device xm0
xm0 net010 net09 vrefn vss_dac nch_lvt_mac l=40e-9 w=400e-9 multi=1 nf=1 sd=140e-9 ad=44e-15 as=44e-15 pd=1.02e-6 ps=1.02e-6 nrd=71.545e-3 nrs=71.545e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M10 = hspiceD device xm10
xm10 net016 dp vrefp vrefp pch_lvt_mac l=40e-9 w=300e-9 multi=1 nf=1 sd=140e-9 ad=33e-15 as=33e-15 pd=820e-9 ps=820e-9 nrd=175.368e-3 nrs=175.368e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M3 = hspiceD device xm3
xm3 net018 net016 vrefp vrefp pch_lvt_mac l=40e-9 w=600e-9 multi=1 nf=1 sd=140e-9 ad=66e-15 as=66e-15 pd=1.42e-6 ps=1.42e-6 nrd=87.684e-3 nrs=87.684e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M2 = hspiceD device xm2
xm2 net010 net09 vrefp vrefp pch_lvt_mac l=40e-9 w=600e-9 multi=1 nf=1 sd=140e-9 ad=66e-15 as=66e-15 pd=1.42e-6 ps=1.42e-6 nrd=87.684e-3 nrs=87.684e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M12 = hspiceD device xm12
xm12 net09 dn vrefp vrefp pch_lvt_mac l=40e-9 w=300e-9 multi=1 nf=1 sd=140e-9 ad=33e-15 as=33e-15 pd=820e-9 ps=820e-9 nrd=175.368e-3 nrs=175.368e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9
**Series configuration of R2
xr2  iop net018  rppolywo l=49e-6 w=1e-6 m=1 multi=1
**End of R2

**Series configuration of R0
xr0  net010 ion  rppolywo l=49e-6 w=1e-6 m=1 multi=1
**End of R0

.ends DAC
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: Retiming_DAC
** View name: schematic
** terminal mapping: CLKB	= clkb
**                   D	= d
**                   ION	= ion
**                   IOP	= iop
**                   VDD	= vdd
**                   VREFN	= vrefn
**                   VREFP	= vrefp
**                   VSS	= vss
.subckt type:mixed Retiming_DAC clkb d ion iop vdd vrefn vrefp vss

** Retiming_Latch_common Instance I0 = hspiceD device xi0
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Retiming_Latch_common, View: schematic
xi0 clkb d net2 net1 vdd vss Retiming_Latch_common

** DAC Instance I1 = hspiceD device xi1
** Instance of Lib: CTDTDSM_NSSAR,  Cell: DAC, View: schematic
xi1 net1 net2 ion iop vrefn vrefp vss DAC
.ends Retiming_DAC
** End of subcircuit definition.

** Library name: CTDTDSM_NSSAR
** Cell name: CTDTDSM_V3
** View name: schematic
.topckt CTDTDSM_V3 avdd_sar avss botep<3> botep<2> botep<1> botep<0> botp<3> botp<2> botp<1> botp<0> clk csel<2> csel<1> csel<0> dout<3> dout<2> dout<1> dout<0> dvdd dvss ib_ota in ip mclk nsbsp<2> nsbsp<1> phsbuf vb_clk vb_samp vcas vcmi vdd_int veld vintn<2> vintn<1> vintn<0> vintp<2> vintp<1> vintp<0> vrefn vrefnd vrefp vrefpd vsw xn xp yn yp
** terminal mapping: AVDD_SAR	= avdd_sar
**                   AVSS	= avss
**                   BOTEP<3>	= botep<3>
**                   BOTEP<2>	= botep<2>
**                   BOTEP<1>	= botep<1>
**                   BOTEP<0>	= botep<0>
**                   BOTP<3>	= botp<3>
**                   BOTP<2>	= botp<2>
**                   BOTP<1>	= botp<1>
**                   BOTP<0>	= botp<0>
**                   CLK	= clk
**                   CSEL<2>	= csel<2>
**                   CSEL<1>	= csel<1>
**                   CSEL<0>	= csel<0>
**                   DOUT<3>	= dout<3>
**                   DOUT<2>	= dout<2>
**                   DOUT<1>	= dout<1>
**                   DOUT<0>	= dout<0>
**                   DVDD	= dvdd
**                   DVSS	= dvss
**                   IB_OTA	= ib_ota
**                   IN	= in
**                   IP	= ip
**                   MCLK	= mclk
**                   NSBSP<2>	= nsbsp<2>
**                   NSBSP<1>	= nsbsp<1>
**                   PHSBUF	= phsbuf
**                   VB_CLK	= vb_clk
**                   VB_SAMP	= vb_samp
**                   VCAS	= vcas
**                   VCMI	= vcmi
**                   VDD_INT	= vdd_int
**                   VELD	= veld
**                   VINTN<2>	= vintn<2>
**                   VINTN<1>	= vintn<1>
**                   VINTN<0>	= vintn<0>
**                   VINTP<2>	= vintp<2>
**                   VINTP<1>	= vintp<1>
**                   VINTP<0>	= vintp<0>
**                   VREFN	= vrefn
**                   VREFND	= vrefnd
**                   VREFP	= vrefp
**                   VREFPD	= vrefpd
**                   VSW	= vsw
**                   XN	= xn
**                   XP	= xp
**                   YN	= yn
**                   YP	= yp

** NSSAR4B_wELD_V2A Instance I58 = hspiceD device xi58
** Instance of Lib: CTDTDSM_NSSAR,  Cell: NSSAR4B_wELD_V2A, View: schematic
xi58 avdd_sar avss botep<3> botep<2> botep<1> botep<0> botp<3> botp<2> botp<1> botp<0> clk clkb d<3> d<2> d<1> d<0> db<3> db<2> db<1> db<0> din dip dout<3> dout<2> dout<1> dout<0> dvdd dvss mclk net036 ns<2> ns<1> nsbsp<2> nsbsp<1> phsbuf net046<0> net046<1> net046<2> net046<3> sc<4> sc<3> sc<2> sc<1> vb_clk vb_samp veld yn vintn<2> vintn<1> vintn<0> vintp<2> vintp<1> vintp<0> yp vcmi vrefn vrefp vsw NSSAR4B_wELD_V2A

** INVX4 Instance I60<2:0> = hspiceD device xi60<2>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi60<2> dout<2> dvdd dvss net026<0> INVX4

** INVX4 Instance I60<2:0> = hspiceD device xi60<1>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi60<1> dout<1> dvdd dvss net026<1> INVX4

** INVX4 Instance I60<2:0> = hspiceD device xi60<0>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX4, View: schematic
xi60<0> dout<0> dvdd dvss net026<2> INVX4
xr7  ip xp   rppolywo l=16.5e-6 w=1e-6 m=1 multi=1

xr6  in xn   rppolywo l=16.5e-6 w=1e-6 m=1 multi=1

** INT_V3 Instance I39 = hspiceD device xi39
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INT_V3, View: schematic
xi39 net043<0> net043<1> net043<2> csel<2> csel<1> csel<0> ib_ota vcas vcmi vdd_int xn xp yp yn avss INT_V3

** INVX12 Instance I54 = hspiceD device xi54
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX12, View: schematic
xi54 net015 dvdd dvss doutl<3> INVX12

** INVX12 Instance I53 = hspiceD device xi53
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX12, View: schematic
xi53 phsbuf avdd_sar avss net045 INVX12

** INVX8 Instance I56<2:0> = hspiceD device xi56<2>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX8, View: schematic
xi56<2> net026<0> dvdd dvss doutl<2> INVX8

** INVX8 Instance I56<2:0> = hspiceD device xi56<1>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX8, View: schematic
xi56<1> net026<1> dvdd dvss doutl<1> INVX8

** INVX8 Instance I56<2:0> = hspiceD device xi56<0>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX8, View: schematic
xi56<0> net026<2> dvdd dvss doutl<0> INVX8

** INVX6 Instance I59 = hspiceD device xi59
** Instance of Lib: CTDTDSM_NSSAR,  Cell: INVX6, View: schematic
xi59 dout<3> dvdd dvss net015 INVX6

** Retiming_DAC Instance I7<15:1> = hspiceD device xi7<15>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Retiming_DAC, View: schematic
xi7<15> net045 doutl<3> xp xn dvdd vrefnd vrefpd dvss Retiming_DAC

** Retiming_DAC Instance I7<15:1> = hspiceD device xi7<14>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Retiming_DAC, View: schematic
xi7<14> net045 doutl<3> xp xn dvdd vrefnd vrefpd dvss Retiming_DAC

** Retiming_DAC Instance I7<15:1> = hspiceD device xi7<13>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Retiming_DAC, View: schematic
xi7<13> net045 doutl<3> xp xn dvdd vrefnd vrefpd dvss Retiming_DAC

** Retiming_DAC Instance I7<15:1> = hspiceD device xi7<12>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Retiming_DAC, View: schematic
xi7<12> net045 doutl<3> xp xn dvdd vrefnd vrefpd dvss Retiming_DAC

** Retiming_DAC Instance I7<15:1> = hspiceD device xi7<11>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Retiming_DAC, View: schematic
xi7<11> net045 doutl<3> xp xn dvdd vrefnd vrefpd dvss Retiming_DAC

** Retiming_DAC Instance I7<15:1> = hspiceD device xi7<10>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Retiming_DAC, View: schematic
xi7<10> net045 doutl<3> xp xn dvdd vrefnd vrefpd dvss Retiming_DAC

** Retiming_DAC Instance I7<15:1> = hspiceD device xi7<9>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Retiming_DAC, View: schematic
xi7<9> net045 doutl<3> xp xn dvdd vrefnd vrefpd dvss Retiming_DAC

** Retiming_DAC Instance I7<15:1> = hspiceD device xi7<8>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Retiming_DAC, View: schematic
xi7<8> net045 doutl<3> xp xn dvdd vrefnd vrefpd dvss Retiming_DAC

** Retiming_DAC Instance I7<15:1> = hspiceD device xi7<7>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Retiming_DAC, View: schematic
xi7<7> net045 doutl<2> xp xn dvdd vrefnd vrefpd dvss Retiming_DAC

** Retiming_DAC Instance I7<15:1> = hspiceD device xi7<6>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Retiming_DAC, View: schematic
xi7<6> net045 doutl<2> xp xn dvdd vrefnd vrefpd dvss Retiming_DAC

** Retiming_DAC Instance I7<15:1> = hspiceD device xi7<5>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Retiming_DAC, View: schematic
xi7<5> net045 doutl<2> xp xn dvdd vrefnd vrefpd dvss Retiming_DAC

** Retiming_DAC Instance I7<15:1> = hspiceD device xi7<4>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Retiming_DAC, View: schematic
xi7<4> net045 doutl<2> xp xn dvdd vrefnd vrefpd dvss Retiming_DAC

** Retiming_DAC Instance I7<15:1> = hspiceD device xi7<3>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Retiming_DAC, View: schematic
xi7<3> net045 doutl<1> xp xn dvdd vrefnd vrefpd dvss Retiming_DAC

** Retiming_DAC Instance I7<15:1> = hspiceD device xi7<2>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Retiming_DAC, View: schematic
xi7<2> net045 doutl<1> xp xn dvdd vrefnd vrefpd dvss Retiming_DAC

** Retiming_DAC Instance I7<15:1> = hspiceD device xi7<1>
** Instance of Lib: CTDTDSM_NSSAR,  Cell: Retiming_DAC, View: schematic
xi7<1> net045 doutl<0> xp xn dvdd vrefnd vrefpd dvss Retiming_DAC
.ends CTDTDSM_V3
** End of subcircuit definition.
