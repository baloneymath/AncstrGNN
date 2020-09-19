** Generated for: hspiceD
** Generated on: Feb 23 18:48:42 2019
** Design library name: LP_SAR_2
** Design cell name: ADC_CORE
** Design view name: schematic
** .PARAM cu
** 
** 
** .TEMP 25.0
** .OPTION
** +    ARTIST=2
** +    INGOLD=2
** +    PARHIER=LOCAL
** +    PSF=2
** .LIB "/usr/local/packages/tsmc_40/pdk/models/hspice/toplevel.l" top_tt

** Library name: LP_SAR
** Cell name: INV0_LVT
** View name: schematic
** terminal mapping: I	= i
**                   ZN	= zn
**                   VDD	= vdd
**                   VSS	= vss
.subckt type:digital INV0_LVT i zn vdd vss

** nch_lvt_mac Instance M0 = hspiceD device xm0
xm0 zn i vss vss nch_lvt_mac l=40e-9 w=155e-9 multi=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=249.512e-3 nrs=249.512e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M1 = hspiceD device xm1
xm1 zn i vdd vdd pch_lvt_mac l=40e-9 w=205e-9 multi=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=479.34e-3 nrs=479.34e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9
.ends INV0_LVT
** End of subcircuit definition.

** Library name: LP_SAR
** Cell name: DAC_SWITCHES
** View name: schematic
** terminal mapping: DAC<9>	= dac<9>
**                   DAC<8>	= dac<8>
**                   DAC<7>	= dac<7>
**                   DAC<6>	= dac<6>
**                   DAC<5>	= dac<5>
**                   DAC<4>	= dac<4>
**                   DAC<3>	= dac<3>
**                   DAC<2>	= dac<2>
**                   DAC<1>	= dac<1>
**                   GND	= gnd
**                   IN<9>	= in<9>
**                   IN<8>	= in<8>
**                   IN<7>	= in<7>
**                   IN<6>	= in<6>
**                   IN<5>	= in<5>
**                   IN<4>	= in<4>
**                   IN<3>	= in<3>
**                   IN<2>	= in<2>
**                   IN<1>	= in<1>
**                   VCM	= vcm
**                   VDD	= vdd
**                   VREFN	= vrefn
**                   VREFP	= vrefp
.subckt type:analog DAC_SWITCHES dac<9> dac<8> dac<7> dac<6> dac<5> dac<4> dac<3> dac<2> dac<1> gnd in<9> in<8> in<7> in<6> in<5> in<4> in<3> in<2> in<1> vcm vdd vrefn vrefp

** INV0_LVT Instance I5 = hspiceD device xi5
** Instance of Lib: LP_SAR,  Cell: INV0_LVT, View: schematic
xi5 in<5> dac<5> vrefp vrefn INV0_LVT

** INV0_LVT Instance I3 = hspiceD device xi3
** Instance of Lib: LP_SAR,  Cell: INV0_LVT, View: schematic
xi3 in<7> dac<7> vrefp vrefn INV0_LVT

** INV0_LVT Instance I4 = hspiceD device xi4
** Instance of Lib: LP_SAR,  Cell: INV0_LVT, View: schematic
xi4 in<6> dac<6> vrefp vrefn INV0_LVT

** INV0_LVT Instance I6 = hspiceD device xi6
** Instance of Lib: LP_SAR,  Cell: INV0_LVT, View: schematic
xi6 in<2> dac<2> vrefp vrefn INV0_LVT

** INV0_LVT Instance I7 = hspiceD device xi7
** Instance of Lib: LP_SAR,  Cell: INV0_LVT, View: schematic
xi7 in<3> dac<3> vrefp vrefn INV0_LVT

** INV0_LVT Instance I10 = hspiceD device xi10
** Instance of Lib: LP_SAR,  Cell: INV0_LVT, View: schematic
xi10 in<8> net07 vdd gnd INV0_LVT

** INV0_LVT Instance I9 = hspiceD device xi9
** Instance of Lib: LP_SAR,  Cell: INV0_LVT, View: schematic
xi9 in<1> dac<1> vrefp vcm INV0_LVT

** INV0_LVT Instance I8 = hspiceD device xi8
** Instance of Lib: LP_SAR,  Cell: INV0_LVT, View: schematic
xi8 in<4> dac<4> vrefp vrefn INV0_LVT

** INV0_LVT Instance I0 = hspiceD device xi0
** Instance of Lib: LP_SAR,  Cell: INV0_LVT, View: schematic
xi0 in<9> net91 vdd gnd INV0_LVT

** INV0_LVT Instance I1 = hspiceD device xi1
** Instance of Lib: LP_SAR,  Cell: INV0_LVT, View: schematic
xi1 net91 dac<9> vrefp vrefn INV0_LVT

** INV0_LVT Instance I2 = hspiceD device xi2
** Instance of Lib: LP_SAR,  Cell: INV0_LVT, View: schematic
xi2 net07 dac<8> vrefp vrefn INV0_LVT
.ends DAC_SWITCHES
** End of subcircuit definition.

** Library name: LP_SAR
** Cell name: SAMPLE_NETWORK
** View name: schematic
** terminal mapping: COMP_IN	= comp_in
**                   GND	= gnd
**                   IN<9>	= in<9>
**                   IN<8>	= in<8>
**                   IN<7>	= in<7>
**                   IN<6>	= in<6>
**                   IN<5>	= in<5>
**                   IN<4>	= in<4>
**                   IN<3>	= in<3>
**                   IN<2>	= in<2>
**                   IN<1>	= in<1>
**                   VCM	= vcm
**                   VDD	= vdd
**                   VREFN	= vrefn
**                   VREFP	= vrefp
.subckt type:analog SAMPLE_NETWORK comp_in gnd in<9> in<8> in<7> in<6> in<5> in<4> in<3> in<2> in<1> vcm vdd vrefn vrefp

** DAC_SWITCHES Instance I2 = hspiceD device xi2
** Instance of Lib: LP_SAR,  Cell: DAC_SWITCHES, View: schematic
xi2 dac<9> dac<8> dac<7> dac<6> dac<5> dac<4> dac<3> dac<2> dac<1> gnd in<9> in<8> in<7> in<6> in<5> in<4> in<3> in<2> in<1> vcm vdd vrefn vrefp DAC_SWITCHES
.ends SAMPLE_NETWORK
** End of subcircuit definition.

** Library name: LP_SAR
** Cell name: COMPARATOR
** View name: schematic
** terminal mapping: CLK	= clk
**                   CROSSN	= crossn
**                   CROSSP	= crossp
**                   GND	= gnd
**                   INTERN	= intern
**                   INTERP	= interp
**                   OUTM	= outm
**                   OUTP	= outp
**                   VDD	= vdd
**                   VI+	= _net1
**                   VI-	= _net0
.subckt type:analog COMPARATOR clk crossn crossp gnd intern interp outm outp vdd _net1 _net0

** nch_mac Instance M1 = hspiceD device xm1
xm1 gnd interp gnd gnd nch_mac l=1e-6 w=2e-6 multi=1 nf=1 sd=140e-9 ad=220e-15 as=220e-15 pd=4.22e-6 ps=4.22e-6 nrd=16.426e-3 nrs=16.426e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.76068e-6 sapb=577.831e-9 spba1=1.84662e-6

** nch_mac Instance M0 = hspiceD device xm0
xm0 gnd intern gnd gnd nch_mac l=1e-6 w=2e-6 multi=1 nf=1 sd=140e-9 ad=220e-15 as=220e-15 pd=4.22e-6 ps=4.22e-6 nrd=16.426e-3 nrs=16.426e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.76068e-6 sapb=577.831e-9 spba1=1.84662e-6

** nch_lvt_mac Instance M16 = hspiceD device xm16
xm16 outm crossp gnd gnd nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=2 sd=140e-9 ad=16.8e-15 as=26.4e-15 pd=520e-9 ps=920e-9 nrd=100.421e-3 nrs=100.421e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_lvt_mac Instance M17 = hspiceD device xm17
xm17 outp crossn gnd gnd nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=2 sd=140e-9 ad=16.8e-15 as=26.4e-15 pd=520e-9 ps=920e-9 nrd=100.421e-3 nrs=100.421e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_lvt_mac Instance M26 = hspiceD device xm26
xm26 net050 clk gnd gnd nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=4 sd=140e-9 ad=33.6e-15 as=43.2e-15 pd=1.04e-6 ps=1.44e-6 nrd=51.227e-3 nrs=51.227e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** nch_lvt_mac Instance M4 = hspiceD device xm4
xm4 crossn crossp intern gnd nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=2 sd=140e-9 ad=16.8e-15 as=26.4e-15 pd=520e-9 ps=920e-9 nrd=100.421e-3 nrs=100.421e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_lvt_mac Instance M3 = hspiceD device xm3
xm3 crossp crossn interp gnd nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=2 sd=140e-9 ad=16.8e-15 as=26.4e-15 pd=520e-9 ps=920e-9 nrd=100.421e-3 nrs=100.421e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_lvt_mac Instance M25 = hspiceD device xm25
xm25 interp _net0 net050 gnd nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=16 sd=140e-9 ad=134.4e-15 as=144e-15 pd=4.16e-6 ps=4.56e-6 nrd=13.004e-3 nrs=13.004e-3 sa=710.014e-9 sb=710.014e-9 sa1=275.611e-9 sa2=566.444e-9 sa3=840.809e-9 sa4=675.061e-9 sb1=275.611e-9 sb2=566.444e-9 sb3=840.809e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=237.899e-9 spba=162.738e-9 sapb=283.746e-9 spba1=164.536e-9

** nch_lvt_mac Instance M24 = hspiceD device xm24
xm24 intern _net1 net050 gnd nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=16 sd=140e-9 ad=134.4e-15 as=144e-15 pd=4.16e-6 ps=4.56e-6 nrd=13.004e-3 nrs=13.004e-3 sa=710.014e-9 sb=710.014e-9 sa1=275.611e-9 sa2=566.444e-9 sa3=840.809e-9 sa4=675.061e-9 sb1=275.611e-9 sb2=566.444e-9 sb3=840.809e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=237.899e-9 spba=162.738e-9 sapb=283.746e-9 spba1=164.536e-9

** pch_lvt_mac Instance M8 = hspiceD device xm8
xm8 outm crossp vdd vdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=4 sd=140e-9 ad=33.6e-15 as=43.2e-15 pd=1.04e-6 ps=1.44e-6 nrd=65.248e-3 nrs=65.248e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_lvt_mac Instance M18 = hspiceD device xm18
xm18 intern clk vdd vdd pch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M15 = hspiceD device xm15
xm15 outp crossn vdd vdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=4 sd=140e-9 ad=33.6e-15 as=43.2e-15 pd=1.04e-6 ps=1.44e-6 nrd=65.248e-3 nrs=65.248e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_lvt_mac Instance M19 = hspiceD device xm19
xm19 interp clk vdd vdd pch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M10 = hspiceD device xm10
xm10 crossn clk vdd vdd pch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M12 = hspiceD device xm12
xm12 crossp clk vdd vdd pch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M14 = hspiceD device xm14
xm14 crossn crossp vdd vdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=4 sd=140e-9 ad=33.6e-15 as=43.2e-15 pd=1.04e-6 ps=1.44e-6 nrd=65.248e-3 nrs=65.248e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_lvt_mac Instance M13 = hspiceD device xm13
xm13 crossp crossn vdd vdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=4 sd=140e-9 ad=33.6e-15 as=43.2e-15 pd=1.04e-6 ps=1.44e-6 nrd=65.248e-3 nrs=65.248e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9
.ends COMPARATOR
** End of subcircuit definition.

** Library name: tcbn40lpbwp
** Cell name: INVD0BWP
** View name: schematic
** terminal mapping: I	= i
**                   ZN	= zn
**                   VDD	= vdd
**                   VSS	= vss
.subckt type:digital INVD0BWP i zn vdd vss

** nch Instance MU1-M_u2 = hspiceD device m0
m0 zn i vss vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** pch Instance MU1-M_u3 = hspiceD device m1
m1 zn i vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9
.ends INVD0BWP
** End of subcircuit definition.

** Library name: LP_SAR
** Cell name: LATCH
** View name: schematic
** terminal mapping: CLK	= clk
**                   GND	= gnd
**                   INM	= inm
**                   INP	= inp
**                   OUTM	= outm
**                   OUTP	= outp
**                   VCC	= vcc
.subckt type:analog LATCH clk gnd inm inp outm outp vcc

** INVD0BWP Instance I1 = hspiceD device xi1
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi1 net67 outp vcc gnd INVD0BWP

** INVD0BWP Instance I0 = hspiceD device xi0
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi0 net64 outm vcc gnd INVD0BWP

** pch_mac Instance M10 = hspiceD device xm10
xm10 net64 clk vcc vcc pch_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=280.589e-3 nrs=280.589e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_mac Instance M9 = hspiceD device xm9
xm9 net67 clk vcc vcc pch_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=280.589e-3 nrs=280.589e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_mac Instance M13 = hspiceD device xm13
xm13 net67 net64 vcc vcc pch_mac l=40e-9 w=240e-9 multi=1 nf=2 sd=140e-9 ad=16.8e-15 as=26.4e-15 pd=520e-9 ps=920e-9 nrd=133.606e-3 nrs=133.606e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_mac Instance M4 = hspiceD device xm4
xm4 net64 net67 vcc vcc pch_mac l=40e-9 w=240e-9 multi=1 nf=2 sd=140e-9 ad=16.8e-15 as=26.4e-15 pd=520e-9 ps=920e-9 nrd=133.606e-3 nrs=133.606e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_mac Instance M8 = hspiceD device xm8
xm8 net65 clk vcc vcc pch_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=280.589e-3 nrs=280.589e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_mac Instance M12 = hspiceD device xm12
xm12 net012 clk vcc vcc pch_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=280.589e-3 nrs=280.589e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_mac Instance M11 = hspiceD device xm11
xm11 net60 clk gnd gnd nch_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_mac Instance M0 = hspiceD device xm0
xm0 net65 inp net60 gnd nch_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_mac Instance M2 = hspiceD device xm2
xm2 net67 net64 net65 gnd nch_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_mac Instance M3 = hspiceD device xm3
xm3 net64 net67 net012 gnd nch_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_mac Instance M1 = hspiceD device xm1
xm1 net012 inm net60 gnd nch_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9
.ends LATCH
** End of subcircuit definition.

** Library name: LP_SAR
** Cell name: SAR_LOGIC_2ND_STAGE
** View name: schematic
** terminal mapping: COMP	= comp
**                   COMPB	= compb
**                   GND	= gnd
**                   Q<9>	= q<9>
**                   Q<8>	= q<8>
**                   Q<7>	= q<7>
**                   Q<6>	= q<6>
**                   Q<5>	= q<5>
**                   Q<4>	= q<4>
**                   Q<3>	= q<3>
**                   Q<2>	= q<2>
**                   Q<1>	= q<1>
**                   QB<9>	= qb<9>
**                   QB<8>	= qb<8>
**                   QB<7>	= qb<7>
**                   QB<6>	= qb<6>
**                   QB<5>	= qb<5>
**                   QB<4>	= qb<4>
**                   QB<3>	= qb<3>
**                   QB<2>	= qb<2>
**                   QB<1>	= qb<1>
**                   S<10>	= s<10>
**                   S<9>	= s<9>
**                   S<8>	= s<8>
**                   S<7>	= s<7>
**                   S<6>	= s<6>
**                   S<5>	= s<5>
**                   S<4>	= s<4>
**                   S<3>	= s<3>
**                   S<2>	= s<2>
**                   S<1>	= s<1>
**                   VDD	= vdd
**                   Q<0>	= q<0>
**                   QB<0>	= qb<0>
**                   S<0>	= s<0>
.subckt type:mixed SAR_LOGIC_2ND_STAGE comp compb gnd q<9> q<8> q<7> q<6> q<5> q<4> q<3> q<2> q<1> qb<9> qb<8> qb<7> qb<6> qb<5> qb<4> qb<3> qb<2> qb<1> s<10> s<9> s<8> s<7> s<6> s<5> s<4> s<3> s<2> s<1> vdd q<0> qb<0> s<0>

** LATCH Instance I1<9:1> = hspiceD device xi1<9>
** Instance of Lib: LP_SAR,  Cell: LATCH, View: schematic
xi1<9> s<9> gnd compb comp net03<0> net04<0> vdd LATCH

** LATCH Instance I1<9:1> = hspiceD device xi1<8>
** Instance of Lib: LP_SAR,  Cell: LATCH, View: schematic
xi1<8> s<8> gnd compb comp net03<1> net04<1> vdd LATCH

** LATCH Instance I1<9:1> = hspiceD device xi1<7>
** Instance of Lib: LP_SAR,  Cell: LATCH, View: schematic
xi1<7> s<7> gnd compb comp net03<2> net04<2> vdd LATCH

** LATCH Instance I1<9:1> = hspiceD device xi1<6>
** Instance of Lib: LP_SAR,  Cell: LATCH, View: schematic
xi1<6> s<6> gnd compb comp net03<3> net04<3> vdd LATCH

** LATCH Instance I1<9:1> = hspiceD device xi1<5>
** Instance of Lib: LP_SAR,  Cell: LATCH, View: schematic
xi1<5> s<5> gnd compb comp net03<4> net04<4> vdd LATCH

** LATCH Instance I1<9:1> = hspiceD device xi1<4>
** Instance of Lib: LP_SAR,  Cell: LATCH, View: schematic
xi1<4> s<4> gnd compb comp net03<5> net04<5> vdd LATCH

** LATCH Instance I1<9:1> = hspiceD device xi1<3>
** Instance of Lib: LP_SAR,  Cell: LATCH, View: schematic
xi1<3> s<3> gnd compb comp net03<6> net04<6> vdd LATCH

** LATCH Instance I1<9:1> = hspiceD device xi1<2>
** Instance of Lib: LP_SAR,  Cell: LATCH, View: schematic
xi1<2> s<2> gnd compb comp net03<7> net04<7> vdd LATCH

** LATCH Instance I1<9:1> = hspiceD device xi1<1>
** Instance of Lib: LP_SAR,  Cell: LATCH, View: schematic
xi1<1> s<1> gnd compb comp net03<8> net04<8> vdd LATCH

** LATCH Instance I0 = hspiceD device xi0
** Instance of Lib: LP_SAR,  Cell: LATCH, View: schematic
xi0 s<10> gnd compb comp qb<9> q<9> vdd LATCH

** INVD0BWP Instance I2<9:1> = hspiceD device xi2<9>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi2<9> net04<0> qb<8> vdd gnd INVD0BWP

** INVD0BWP Instance I2<9:1> = hspiceD device xi2<8>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi2<8> net04<1> qb<7> vdd gnd INVD0BWP

** INVD0BWP Instance I2<9:1> = hspiceD device xi2<7>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi2<7> net04<2> qb<6> vdd gnd INVD0BWP

** INVD0BWP Instance I2<9:1> = hspiceD device xi2<6>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi2<6> net04<3> qb<5> vdd gnd INVD0BWP

** INVD0BWP Instance I2<9:1> = hspiceD device xi2<5>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi2<5> net04<4> qb<4> vdd gnd INVD0BWP

** INVD0BWP Instance I2<9:1> = hspiceD device xi2<4>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi2<4> net04<5> qb<3> vdd gnd INVD0BWP

** INVD0BWP Instance I2<9:1> = hspiceD device xi2<3>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi2<3> net04<6> qb<2> vdd gnd INVD0BWP

** INVD0BWP Instance I2<9:1> = hspiceD device xi2<2>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi2<2> net04<7> qb<1> vdd gnd INVD0BWP

** INVD0BWP Instance I2<9:1> = hspiceD device xi2<1>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi2<1> net04<8> qb<0> vdd gnd INVD0BWP

** INVD0BWP Instance I3<9:1> = hspiceD device xi3<9>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi3<9> net03<0> q<8> vdd gnd INVD0BWP

** INVD0BWP Instance I3<9:1> = hspiceD device xi3<8>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi3<8> net03<1> q<7> vdd gnd INVD0BWP

** INVD0BWP Instance I3<9:1> = hspiceD device xi3<7>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi3<7> net03<2> q<6> vdd gnd INVD0BWP

** INVD0BWP Instance I3<9:1> = hspiceD device xi3<6>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi3<6> net03<3> q<5> vdd gnd INVD0BWP

** INVD0BWP Instance I3<9:1> = hspiceD device xi3<5>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi3<5> net03<4> q<4> vdd gnd INVD0BWP

** INVD0BWP Instance I3<9:1> = hspiceD device xi3<4>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi3<4> net03<5> q<3> vdd gnd INVD0BWP

** INVD0BWP Instance I3<9:1> = hspiceD device xi3<3>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi3<3> net03<6> q<2> vdd gnd INVD0BWP

** INVD0BWP Instance I3<9:1> = hspiceD device xi3<2>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi3<2> net03<7> q<1> vdd gnd INVD0BWP

** INVD0BWP Instance I3<9:1> = hspiceD device xi3<1>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi3<1> net03<8> q<0> vdd gnd INVD0BWP
.ends SAR_LOGIC_2ND_STAGE
** End of subcircuit definition.

** Library name: tcbn40lpbwp
** Cell name: DFSNQD1BWP
** View name: schematic
** terminal mapping: D	= d
**                   CP	= cp
**                   SDN	= sdn
**                   Q	= q
**                   VDD	= vdd
**                   VSS	= vss
.subckt type:digital DFSNQD1BWP d cp sdn q vdd vss

** nch Instance MI32-M_u4 = hspiceD device m0
m0 net44 net25 vss vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI55-M_u2 = hspiceD device m1
m1 net11 cp vss vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** nch Instance MI60-M_u2 = hspiceD device m2
m2 q net13 vss vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI32-M_u3 = hspiceD device m3
m3 net7 sdn net44 vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI31-M_u4 = hspiceD device m4
m4 net37 net13 vss vss nch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** nch Instance MI31-M_u3 = hspiceD device m5
m5 net33 sdn net37 vss nch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** nch Instance MI20 = hspiceD device mi20
mi20 net7 net83 net63 vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI23 = hspiceD device mi23
mi23 net25 net83 net5 vss nch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** nch Instance MI22 = hspiceD device mi22
mi22 net33 net11 net63 vss nch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** nch Instance MI21 = hspiceD device mi21
mi21 net25 d net20 vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI25-M_u2 = hspiceD device m6
m6 net13 net63 vss vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI19 = hspiceD device mi19
mi19 net20 net11 vss vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI24 = hspiceD device mi24
mi24 net5 net7 vss vss nch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** nch Instance MI40-M_u2 = hspiceD device m7
m7 net83 net11 vss vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** pch Instance MI55-M_u3 = hspiceD device m8
m8 net11 cp vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9

** pch Instance MI33 = hspiceD device mi33
mi33 net33 net83 net63 vdd pch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** pch Instance MI32-M_u1 = hspiceD device m9
m9 net7 sdn vdd vdd pch l=40e-9 w=410e-9 m=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=170.732e-3 nrs=170.732e-3 sa=110e-9 sb=110e-9

** pch Instance MI60-M_u3 = hspiceD device m10
m10 q net13 vdd vdd pch l=40e-9 w=410e-9 m=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=170.732e-3 nrs=170.732e-3 sa=110e-9 sb=110e-9

** pch Instance MI34 = hspiceD device mi34
mi34 net25 net11 net96 vdd pch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** pch Instance MI30 = hspiceD device mi30
mi30 net7 net11 net63 vdd pch l=40e-9 w=250e-9 m=1 nf=1 sd=140e-9 ad=27.5e-15 as=27.5e-15 pd=720e-9 ps=720e-9 nrd=280e-3 nrs=280e-3 sa=110e-9 sb=110e-9

** pch Instance MI32-M_u2 = hspiceD device m11
m11 net7 net25 vdd vdd pch l=40e-9 w=410e-9 m=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=170.732e-3 nrs=170.732e-3 sa=110e-9 sb=110e-9

** pch Instance MI28 = hspiceD device mi28
mi28 net81 net83 vdd vdd pch l=40e-9 w=340e-9 m=1 nf=1 sd=140e-9 ad=37.4e-15 as=37.4e-15 pd=900e-9 ps=900e-9 nrd=205.882e-3 nrs=205.882e-3 sa=110e-9 sb=110e-9

** pch Instance MI40-M_u3 = hspiceD device m12
m12 net83 net11 vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9

** pch Instance MI31-M_u2 = hspiceD device m13
m13 net33 net13 vdd vdd pch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** pch Instance MI35 = hspiceD device mi35
mi35 net96 net7 vdd vdd pch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** pch Instance MI31-M_u1 = hspiceD device m14
m14 net33 sdn vdd vdd pch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** pch Instance MI25-M_u3 = hspiceD device m15
m15 net13 net63 vdd vdd pch l=40e-9 w=410e-9 m=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=170.732e-3 nrs=170.732e-3 sa=110e-9 sb=110e-9

** pch Instance MI26 = hspiceD device mi26
mi26 net25 d net81 vdd pch l=40e-9 w=340e-9 m=1 nf=1 sd=140e-9 ad=37.4e-15 as=37.4e-15 pd=900e-9 ps=900e-9 nrd=205.882e-3 nrs=205.882e-3 sa=110e-9 sb=110e-9
.ends DFSNQD1BWP
** End of subcircuit definition.

** Library name: tcbn40lpbwp
** Cell name: AN3D0BWP
** View name: schematic
** terminal mapping: A1	= a1
**                   A2	= a2
**                   A3	= a3
**                   Z	= z
**                   VDD	= vdd
**                   VSS	= vss
.subckt type:digital AN3D0BWP a1 a2 a3 z vdd vss

** nch Instance M_u4-M_u6 = hspiceD device m0
m0 net13 a3 vss vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** nch Instance M_u3-M_u2 = hspiceD device m1
m1 z net11 vss vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** nch Instance M_u4-M_u5 = hspiceD device m2
m2 net5 a2 net13 vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** nch Instance M_u4-M_u4 = hspiceD device m3
m3 net11 a1 net5 vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** pch Instance M_u3-M_u3 = hspiceD device m4
m4 z net11 vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9

** pch Instance M_u4-M_u3 = hspiceD device m5
m5 net11 a3 vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9

** pch Instance M_u4-M_u1 = hspiceD device m6
m6 net11 a1 vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9

** pch Instance M_u4-M_u2 = hspiceD device m7
m7 net11 a2 vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9
.ends AN3D0BWP
** End of subcircuit definition.

** Library name: tcbn40lpbwp
** Cell name: AN2D0BWP
** View name: schematic
** terminal mapping: A1	= a1
**                   A2	= a2
**                   Z	= z
**                   VDD	= vdd
**                   VSS	= vss
.subckt type:digital AN2D0BWP a1 a2 z vdd vss

** pch Instance M_u3-M_u3 = hspiceD device m0
m0 z net5 vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9

** pch Instance M_u2-M_u1 = hspiceD device m1
m1 net5 a1 vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9

** pch Instance M_u2-M_u2 = hspiceD device m2
m2 net5 a2 vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9

** nch Instance M_u3-M_u2 = hspiceD device m3
m3 z net5 vss vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** nch Instance M_u2-M_u4 = hspiceD device m4
m4 net17 a2 vss vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** nch Instance M_u2-M_u3 = hspiceD device m5
m5 net5 a1 net17 vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9
.ends AN2D0BWP
** End of subcircuit definition.

** Library name: tcbn40lpbwp
** Cell name: DFNCND1BWP
** View name: schematic
** terminal mapping: D	= d
**                   CPN	= cpn
**                   CDN	= cdn
**                   Q	= q
**                   QN	= qn
**                   VDD	= vdd
**                   VSS	= vss
.subckt type:digital DFNCND1BWP d cpn cdn q qn vdd vss

** pch Instance MI60-M_u2 = hspiceD device m0
m0 net49 cdn vdd vdd pch l=40e-9 w=280e-9 m=1 nf=1 sd=140e-9 ad=30.8e-15 as=30.8e-15 pd=780e-9 ps=780e-9 nrd=250e-3 nrs=250e-3 sa=110e-9 sb=110e-9

** pch Instance MI43 = hspiceD device mi43
mi43 net53 net9 vdd vdd pch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** pch Instance MI60-M_u1 = hspiceD device m1
m1 net49 net20 vdd vdd pch l=40e-9 w=280e-9 m=1 nf=1 sd=140e-9 ad=30.8e-15 as=30.8e-15 pd=780e-9 ps=780e-9 nrd=250e-3 nrs=250e-3 sa=110e-9 sb=110e-9

** pch Instance MI6 = hspiceD device mi6
mi6 net5 d net1 vdd pch l=40e-9 w=340e-9 m=1 nf=1 sd=140e-9 ad=37.4e-15 as=37.4e-15 pd=900e-9 ps=900e-9 nrd=205.882e-3 nrs=205.882e-3 sa=110e-9 sb=110e-9

** pch Instance MI62-M_u3 = hspiceD device m2
m2 net11 net67 vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9

** pch Instance MI63-M_u3 = hspiceD device m3
m3 net37 net49 vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9

** pch Instance MI29-M_u3 = hspiceD device m4
m4 qn net37 vdd vdd pch l=40e-9 w=410e-9 m=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=170.732e-3 nrs=170.732e-3 sa=110e-9 sb=110e-9

** pch Instance MI31-M_u3 = hspiceD device m5
m5 net67 cpn vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9

** pch Instance MI27-M_u3 = hspiceD device m6
m6 q net49 vdd vdd pch l=40e-9 w=410e-9 m=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=170.732e-3 nrs=170.732e-3 sa=110e-9 sb=110e-9

** pch Instance MI44 = hspiceD device mi44
mi44 net53 cdn vdd vdd pch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** pch Instance MI17 = hspiceD device mi17
mi17 net37 net67 net20 vdd pch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** pch Instance MI13-M_u3 = hspiceD device m7
m7 net9 net5 vdd vdd pch l=40e-9 w=180e-9 m=1 nf=1 sd=140e-9 ad=19.8e-15 as=19.8e-15 pd=580e-9 ps=580e-9 nrd=388.889e-3 nrs=388.889e-3 sa=110e-9 sb=110e-9

** pch Instance MI16 = hspiceD device mi16
mi16 net9 net11 net20 vdd pch l=40e-9 w=180e-9 m=1 nf=1 sd=140e-9 ad=19.8e-15 as=19.8e-15 pd=580e-9 ps=580e-9 nrd=388.889e-3 nrs=388.889e-3 sa=110e-9 sb=110e-9

** pch Instance MI45 = hspiceD device mi45
mi45 net5 net11 net53 vdd pch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** pch Instance MI7 = hspiceD device mi7
mi7 net1 net67 vdd vdd pch l=40e-9 w=340e-9 m=1 nf=1 sd=140e-9 ad=37.4e-15 as=37.4e-15 pd=900e-9 ps=900e-9 nrd=205.882e-3 nrs=205.882e-3 sa=110e-9 sb=110e-9

** nch Instance MI29-M_u2 = hspiceD device m8
m8 qn net37 vss vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI63-M_u2 = hspiceD device m9
m9 net37 net49 vss vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** nch Instance MI4 = hspiceD device mi4
mi4 net109 net11 vss vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI18 = hspiceD device mi18
mi18 net37 net11 net20 vss nch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** nch Instance MI60-M_u3 = hspiceD device m10
m10 net49 net20 net104 vss nch l=40e-9 w=280e-9 m=1 nf=1 sd=140e-9 ad=30.8e-15 as=30.8e-15 pd=780e-9 ps=780e-9 nrd=250e-3 nrs=250e-3 sa=110e-9 sb=110e-9

** nch Instance MI60-M_u4 = hspiceD device m11
m11 net104 cdn vss vss nch l=40e-9 w=280e-9 m=1 nf=1 sd=140e-9 ad=30.8e-15 as=30.8e-15 pd=780e-9 ps=780e-9 nrd=250e-3 nrs=250e-3 sa=110e-9 sb=110e-9

** nch Instance MI13-M_u2 = hspiceD device m12
m12 net9 net5 vss vss nch l=40e-9 w=150e-9 m=1 nf=1 sd=140e-9 ad=16.5e-15 as=16.5e-15 pd=520e-9 ps=520e-9 nrd=466.667e-3 nrs=466.667e-3 sa=110e-9 sb=110e-9

** nch Instance MI15 = hspiceD device mi15
mi15 net9 net67 net20 vss nch l=40e-9 w=150e-9 m=1 nf=1 sd=140e-9 ad=16.5e-15 as=16.5e-15 pd=520e-9 ps=520e-9 nrd=466.667e-3 nrs=466.667e-3 sa=110e-9 sb=110e-9

** nch Instance MI5 = hspiceD device mi5
mi5 net5 d net109 vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI31-M_u2 = hspiceD device m13
m13 net67 cpn vss vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** nch Instance MI49 = hspiceD device mi49
mi49 net77 cdn vss vss nch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** nch Instance MI48 = hspiceD device mi48
mi48 net64 net9 net77 vss nch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** nch Instance MI27-M_u2 = hspiceD device m14
m14 q net49 vss vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI62-M_u2 = hspiceD device m15
m15 net11 net67 vss vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** nch Instance MI47 = hspiceD device mi47
mi47 net5 net67 net64 vss nch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9
.ends DFNCND1BWP
** End of subcircuit definition.

** Library name: LP_SAR
** Cell name: SAR_LOGIC_1ST_STAGE_CLKGATING
** View name: schematic
** terminal mapping: CLK	= clk
**                   CLKSB	= clksb
**                   GND	= gnd
**                   S<10>	= s<10>
**                   S<9>	= s<9>
**                   S<8>	= s<8>
**                   S<7>	= s<7>
**                   S<6>	= s<6>
**                   S<5>	= s<5>
**                   S<4>	= s<4>
**                   S<3>	= s<3>
**                   S<2>	= s<2>
**                   S<1>	= s<1>
**                   S<0>	= s<0>
**                   VDD	= vdd
**                   SB<1>	= sb<1>
.subckt type:digital SAR_LOGIC_1ST_STAGE_CLKGATING clk clksb gnd s<10> s<9> s<8> s<7> s<6> s<5> s<4> s<3> s<2> s<1> s<0> vdd sb<1>

** DFSNQD1BWP Instance I4 = hspiceD device xi4
** Instance of Lib: tcbn40lpbwp,  Cell: DFSNQD1BWP, View: schematic
** xi4 net2 net3 net6 net1 net5 net4 DFSNQD1BWP

** AN3D0BWP Instance I16<10:1> = hspiceD device xi16<10>
** Instance of Lib: tcbn40lpbwp,  Cell: AN3D0BWP, View: schematic
xi16<10> clkb s<10> sb<9> clkff<9> vdd gnd AN3D0BWP

** AN3D0BWP Instance I16<10:1> = hspiceD device xi16<9>
** Instance of Lib: tcbn40lpbwp,  Cell: AN3D0BWP, View: schematic
xi16<9> clkb s<9> sb<8> clkff<8> vdd gnd AN3D0BWP

** AN3D0BWP Instance I16<10:1> = hspiceD device xi16<8>
** Instance of Lib: tcbn40lpbwp,  Cell: AN3D0BWP, View: schematic
xi16<8> clkb s<8> sb<7> clkff<7> vdd gnd AN3D0BWP

** AN3D0BWP Instance I16<10:1> = hspiceD device xi16<7>
** Instance of Lib: tcbn40lpbwp,  Cell: AN3D0BWP, View: schematic
xi16<7> clkb s<7> sb<6> clkff<6> vdd gnd AN3D0BWP

** AN3D0BWP Instance I16<10:1> = hspiceD device xi16<6>
** Instance of Lib: tcbn40lpbwp,  Cell: AN3D0BWP, View: schematic
xi16<6> clkb s<6> sb<5> clkff<5> vdd gnd AN3D0BWP

** AN3D0BWP Instance I16<10:1> = hspiceD device xi16<5>
** Instance of Lib: tcbn40lpbwp,  Cell: AN3D0BWP, View: schematic
xi16<5> clkb s<5> sb<4> clkff<4> vdd gnd AN3D0BWP

** AN3D0BWP Instance I16<10:1> = hspiceD device xi16<4>
** Instance of Lib: tcbn40lpbwp,  Cell: AN3D0BWP, View: schematic
xi16<4> clkb s<4> sb<3> clkff<3> vdd gnd AN3D0BWP

** AN3D0BWP Instance I16<10:1> = hspiceD device xi16<3>
** Instance of Lib: tcbn40lpbwp,  Cell: AN3D0BWP, View: schematic
xi16<3> clkb s<3> sb<2> clkff<2> vdd gnd AN3D0BWP

** AN3D0BWP Instance I16<10:1> = hspiceD device xi16<2>
** Instance of Lib: tcbn40lpbwp,  Cell: AN3D0BWP, View: schematic
xi16<2> clkb s<2> sb<1> clkff<1> vdd gnd AN3D0BWP

** AN3D0BWP Instance I16<10:1> = hspiceD device xi16<1>
** Instance of Lib: tcbn40lpbwp,  Cell: AN3D0BWP, View: schematic
xi16<1> clkb s<1> sb<0> clkff<0> vdd gnd AN3D0BWP

** INVD0BWP Instance I19 = hspiceD device xi19
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi19 clk clkb vdd gnd INVD0BWP

** AN2D0BWP Instance I13 = hspiceD device xi13
** Instance of Lib: tcbn40lpbwp,  Cell: AN2D0BWP, View: schematic
xi13 clkb sb<10> clkff<10> vdd gnd AN2D0BWP

** DFNCND1BWP Instance I18<10:1> = hspiceD device xi18<10>
** Instance of Lib: tcbn40lpbwp,  Cell: DFNCND1BWP, View: schematic
xi18<10> s<10> clkff<9> clksb s<9> sb<9> vdd gnd DFNCND1BWP

** DFNCND1BWP Instance I18<10:1> = hspiceD device xi18<9>
** Instance of Lib: tcbn40lpbwp,  Cell: DFNCND1BWP, View: schematic
xi18<9> s<9> clkff<8> clksb s<8> sb<8> vdd gnd DFNCND1BWP

** DFNCND1BWP Instance I18<10:1> = hspiceD device xi18<8>
** Instance of Lib: tcbn40lpbwp,  Cell: DFNCND1BWP, View: schematic
xi18<8> s<8> clkff<7> clksb s<7> sb<7> vdd gnd DFNCND1BWP

** DFNCND1BWP Instance I18<10:1> = hspiceD device xi18<7>
** Instance of Lib: tcbn40lpbwp,  Cell: DFNCND1BWP, View: schematic
xi18<7> s<7> clkff<6> clksb s<6> sb<6> vdd gnd DFNCND1BWP

** DFNCND1BWP Instance I18<10:1> = hspiceD device xi18<6>
** Instance of Lib: tcbn40lpbwp,  Cell: DFNCND1BWP, View: schematic
xi18<6> s<6> clkff<5> clksb s<5> sb<5> vdd gnd DFNCND1BWP

** DFNCND1BWP Instance I18<10:1> = hspiceD device xi18<5>
** Instance of Lib: tcbn40lpbwp,  Cell: DFNCND1BWP, View: schematic
xi18<5> s<5> clkff<4> clksb s<4> sb<4> vdd gnd DFNCND1BWP

** DFNCND1BWP Instance I18<10:1> = hspiceD device xi18<4>
** Instance of Lib: tcbn40lpbwp,  Cell: DFNCND1BWP, View: schematic
xi18<4> s<4> clkff<3> clksb s<3> sb<3> vdd gnd DFNCND1BWP

** DFNCND1BWP Instance I18<10:1> = hspiceD device xi18<3>
** Instance of Lib: tcbn40lpbwp,  Cell: DFNCND1BWP, View: schematic
xi18<3> s<3> clkff<2> clksb s<2> sb<2> vdd gnd DFNCND1BWP

** DFNCND1BWP Instance I18<10:1> = hspiceD device xi18<2>
** Instance of Lib: tcbn40lpbwp,  Cell: DFNCND1BWP, View: schematic
xi18<2> s<2> clkff<1> clksb s<1> sb<1> vdd gnd DFNCND1BWP

** DFNCND1BWP Instance I18<10:1> = hspiceD device xi18<1>
** Instance of Lib: tcbn40lpbwp,  Cell: DFNCND1BWP, View: schematic
xi18<1> s<1> clkff<0> clksb s<0> sb<0> vdd gnd DFNCND1BWP

** DFNCND1BWP Instance I17 = hspiceD device xi17
** Instance of Lib: tcbn40lpbwp,  Cell: DFNCND1BWP, View: schematic
xi17 vdd clkff<10> clksb s<10> sb<10> vdd gnd DFNCND1BWP
.ends SAR_LOGIC_1ST_STAGE_CLKGATING
** End of subcircuit definition.

** Library name: LP_SAR
** Cell name: SAR_LOGIC
** View name: schematic
** terminal mapping: CLK	= clk
**                   CLKSB	= clksb
**                   GND	= gnd
**                   OUTN	= outn
**                   OUTP	= outp
**                   Q<9>	= q<9>
**                   Q<8>	= q<8>
**                   Q<7>	= q<7>
**                   Q<6>	= q<6>
**                   Q<5>	= q<5>
**                   Q<4>	= q<4>
**                   Q<3>	= q<3>
**                   Q<2>	= q<2>
**                   Q<1>	= q<1>
**                   QB<9>	= qb<9>
**                   QB<8>	= qb<8>
**                   QB<7>	= qb<7>
**                   QB<6>	= qb<6>
**                   QB<5>	= qb<5>
**                   QB<4>	= qb<4>
**                   QB<3>	= qb<3>
**                   QB<2>	= qb<2>
**                   QB<1>	= qb<1>
**                   VDD	= vdd
**                   Q<0>	= q<0>
**                   QB<0>	= qb<0>
**                   S<0>	= s<0>
**                   SB<1>	= sb<1>
.subckt type:digital SAR_LOGIC clk clksb gnd outn outp q<9> q<8> q<7> q<6> q<5> q<4> q<3> q<2> q<1> qb<9> qb<8> qb<7> qb<6> qb<5> qb<4> qb<3> qb<2> qb<1> vdd q<0> qb<0> s<0> sb<1>

** SAR_LOGIC_2ND_STAGE Instance I1 = hspiceD device xi1
** Instance of Lib: LP_SAR,  Cell: SAR_LOGIC_2ND_STAGE, View: schematic
xi1 outp outn gnd q<9> q<8> q<7> q<6> q<5> q<4> q<3> q<2> q<1> qb<9> qb<8> qb<7> qb<6> qb<5> qb<4> qb<3> qb<2> qb<1> s<10> s<9> s<8> s<7> s<6> s<5> s<4> s<3> s<2> s<1> vdd q<0> qb<0> s<0> SAR_LOGIC_2ND_STAGE

** SAR_LOGIC_1ST_STAGE_CLKGATING Instance I0 = hspiceD device xi0
** Instance of Lib: LP_SAR,  Cell: SAR_LOGIC_1ST_STAGE_CLKGATING, View: schematic
xi0 clk clksb gnd s<10> s<9> s<8> s<7> s<6> s<5> s<4> s<3> s<2> s<1> s<0> vdd sb<1> SAR_LOGIC_1ST_STAGE_CLKGATING
.ends SAR_LOGIC
** End of subcircuit definition.

** Library name: LP_SAR
** Cell name: SAMPLER
** View name: schematic
** terminal mapping: CLKS_BOOST	= clks_boost
**                   GND	= gnd
**                   VIN	= vin
**                   VOUT	= vout
.subckt type:analog SAMPLER clks_boost gnd vin vout

** nch_lvt_mac Instance M0 = hspiceD device xm0
xm0 vout clks_boost vin gnd nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9
.ends SAMPLER
** End of subcircuit definition.

** Library name: tcbn40lpbwp
** Cell name: DFCND1BWP
** View name: schematic
** terminal mapping: D	= d
**                   CP	= cp
**                   CDN	= cdn
**                   Q	= q
**                   QN	= qn
**                   VDD	= vdd
**                   VSS	= vss
.subckt type:digital DFCND1BWP d cp cdn q qn vdd vss

** nch Instance MI29-M_u2 = hspiceD device m0
m0 qn net33 vss vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI4 = hspiceD device mi4
mi4 net53 net5 vss vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI18 = hspiceD device mi18
mi18 net33 net5 net79 vss nch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** nch Instance MI21-M_u3 = hspiceD device m1
m1 net95 net79 net9 vss nch l=40e-9 w=280e-9 m=1 nf=1 sd=140e-9 ad=30.8e-15 as=30.8e-15 pd=780e-9 ps=780e-9 nrd=250e-3 nrs=250e-3 sa=110e-9 sb=110e-9

** nch Instance MI13-M_u2 = hspiceD device m2
m2 net81 net25 vss vss nch l=40e-9 w=150e-9 m=1 nf=1 sd=140e-9 ad=16.5e-15 as=16.5e-15 pd=520e-9 ps=520e-9 nrd=466.667e-3 nrs=466.667e-3 sa=110e-9 sb=110e-9

** nch Instance MI15 = hspiceD device mi15
mi15 net81 net67 net79 vss nch l=40e-9 w=150e-9 m=1 nf=1 sd=140e-9 ad=16.5e-15 as=16.5e-15 pd=520e-9 ps=520e-9 nrd=466.667e-3 nrs=466.667e-3 sa=110e-9 sb=110e-9

** nch Instance MI14-M_u2 = hspiceD device m3
m3 net33 net95 vss vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** nch Instance MI32-M_u2 = hspiceD device m4
m4 net67 net5 vss vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** nch Instance MI5 = hspiceD device mi5
mi5 net25 d net53 vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI49 = hspiceD device mi49
mi49 net20 cdn vss vss nch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** nch Instance MI48 = hspiceD device mi48
mi48 net17 net81 net20 vss nch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** nch Instance MI27-M_u2 = hspiceD device m5
m5 q net95 vss vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI21-M_u4 = hspiceD device m6
m6 net9 cdn vss vss nch l=40e-9 w=280e-9 m=1 nf=1 sd=140e-9 ad=30.8e-15 as=30.8e-15 pd=780e-9 ps=780e-9 nrd=250e-3 nrs=250e-3 sa=110e-9 sb=110e-9

** nch Instance MI22-M_u2 = hspiceD device m7
m7 net5 cp vss vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** nch Instance MI47 = hspiceD device mi47
mi47 net25 net67 net17 vss nch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** pch Instance MI14-M_u3 = hspiceD device m8
m8 net33 net95 vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9

** pch Instance MI22-M_u3 = hspiceD device m9
m9 net5 cp vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9

** pch Instance MI32-M_u3 = hspiceD device m10
m10 net67 net5 vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9

** pch Instance MI43 = hspiceD device mi43
mi43 net72 net81 vdd vdd pch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** pch Instance MI6 = hspiceD device mi6
mi6 net25 d net104 vdd pch l=40e-9 w=340e-9 m=1 nf=1 sd=140e-9 ad=37.4e-15 as=37.4e-15 pd=900e-9 ps=900e-9 nrd=205.882e-3 nrs=205.882e-3 sa=110e-9 sb=110e-9

** pch Instance MI29-M_u3 = hspiceD device m11
m11 qn net33 vdd vdd pch l=40e-9 w=410e-9 m=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=170.732e-3 nrs=170.732e-3 sa=110e-9 sb=110e-9

** pch Instance MI27-M_u3 = hspiceD device m12
m12 q net95 vdd vdd pch l=40e-9 w=410e-9 m=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=170.732e-3 nrs=170.732e-3 sa=110e-9 sb=110e-9

** pch Instance MI44 = hspiceD device mi44
mi44 net72 cdn vdd vdd pch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** pch Instance MI17 = hspiceD device mi17
mi17 net33 net67 net79 vdd pch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** pch Instance MI13-M_u3 = hspiceD device m13
m13 net81 net25 vdd vdd pch l=40e-9 w=180e-9 m=1 nf=1 sd=140e-9 ad=19.8e-15 as=19.8e-15 pd=580e-9 ps=580e-9 nrd=388.889e-3 nrs=388.889e-3 sa=110e-9 sb=110e-9

** pch Instance MI21-M_u1 = hspiceD device m14
m14 net95 net79 vdd vdd pch l=40e-9 w=280e-9 m=1 nf=1 sd=140e-9 ad=30.8e-15 as=30.8e-15 pd=780e-9 ps=780e-9 nrd=250e-3 nrs=250e-3 sa=110e-9 sb=110e-9

** pch Instance MI16 = hspiceD device mi16
mi16 net81 net5 net79 vdd pch l=40e-9 w=180e-9 m=1 nf=1 sd=140e-9 ad=19.8e-15 as=19.8e-15 pd=580e-9 ps=580e-9 nrd=388.889e-3 nrs=388.889e-3 sa=110e-9 sb=110e-9

** pch Instance MI45 = hspiceD device mi45
mi45 net25 net5 net72 vdd pch l=40e-9 w=120e-9 m=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=583.333e-3 nrs=583.333e-3 sa=110e-9 sb=110e-9

** pch Instance MI7 = hspiceD device mi7
mi7 net104 net67 vdd vdd pch l=40e-9 w=340e-9 m=1 nf=1 sd=140e-9 ad=37.4e-15 as=37.4e-15 pd=900e-9 ps=900e-9 nrd=205.882e-3 nrs=205.882e-3 sa=110e-9 sb=110e-9

** pch Instance MI21-M_u2 = hspiceD device m15
m15 net95 cdn vdd vdd pch l=40e-9 w=280e-9 m=1 nf=1 sd=140e-9 ad=30.8e-15 as=30.8e-15 pd=780e-9 ps=780e-9 nrd=250e-3 nrs=250e-3 sa=110e-9 sb=110e-9
.ends DFCND1BWP
** End of subcircuit definition.

** Library name: tcbn40lpbwp
** Cell name: NR2D0BWP
** View name: schematic
** terminal mapping: A1	= a1
**                   A2	= a2
**                   ZN	= zn
**                   VDD	= vdd
**                   VSS	= vss
.subckt type:digital NR2D0BWP a1 a2 zn vdd vss

** nch Instance MI1-M_u3 = hspiceD device m0
m0 zn a2 vss vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** nch Instance MI1-M_u4 = hspiceD device m1
m1 zn a1 vss vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** pch Instance MI1-M_u1 = hspiceD device m2
m2 net13 a2 vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9

** pch Instance MI1-M_u2 = hspiceD device m3
m3 zn a1 net13 vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9
.ends NR2D0BWP
** End of subcircuit definition.

** Library name: LP_SAR
** Cell name: COUNTER
** View name: schematic
** terminal mapping: CLKSB	= clksb
**                   CTRL	= ctrl
**                   D<1>	= d<1>
**                   D<0>	= d<0>
**                   GND	= gnd
**                   IN	= in
**                   VDD	= vdd
.subckt type:digital COUNTER clksb ctrl d<1> d<0> gnd in vdd

** DFCND1BWP Instance I1 = hspiceD device xi1
** Instance of Lib: tcbn40lpbwp,  Cell: DFCND1BWP, View: schematic
xi1 net9 d<0> clksb d<1> net9 vdd gnd DFCND1BWP

** DFCND1BWP Instance I0 = hspiceD device xi0
** Instance of Lib: tcbn40lpbwp,  Cell: DFCND1BWP, View: schematic
xi0 net6 net12 clksb d<0> net6 vdd gnd DFCND1BWP

** NR2D0BWP Instance I2 = hspiceD device xi2
** Instance of Lib: tcbn40lpbwp,  Cell: NR2D0BWP, View: schematic
xi2 in ctrl net12 vdd gnd NR2D0BWP
.ends COUNTER
** End of subcircuit definition.

** Library name: LP_SAR_2
** Cell name: ADC_CORE
** View name: schematic
.topckt ADC_CORE clkc clks gnd inn inp q<9> q<8> q<7> q<6> q<5> q<4> q<3> q<2> q<1> q<0> qb<9> qb<8> qb<7> qb<6> qb<5> qb<4> qb<3> qb<2> qb<1> qb<0> vdd bypass est_delay vcm vrefn vrefp
** terminal mapping: CLKC	= clkc
**                   CLKS	= clks
**                   GND	= gnd
**                   INN	= inn
**                   INP	= inp
**                   Q<9>	= q<9>
**                   Q<8>	= q<8>
**                   Q<7>	= q<7>
**                   Q<6>	= q<6>
**                   Q<5>	= q<5>
**                   Q<4>	= q<4>
**                   Q<3>	= q<3>
**                   Q<2>	= q<2>
**                   Q<1>	= q<1>
**                   Q<0>	= q<0>
**                   QB<9>	= qb<9>
**                   QB<8>	= qb<8>
**                   QB<7>	= qb<7>
**                   QB<6>	= qb<6>
**                   QB<5>	= qb<5>
**                   QB<4>	= qb<4>
**                   QB<3>	= qb<3>
**                   QB<2>	= qb<2>
**                   QB<1>	= qb<1>
**                   QB<0>	= qb<0>
**                   VDD	= vdd
**                   BYPASS	= bypass
**                   EST_DELAY	= est_delay
**                   VCM	= vcm
**                   VREFN	= vrefn
**                   VREFP	= vrefp

** SAMPLE_NETWORK Instance I1 = hspiceD device xi1
** Instance of Lib: LP_SAR,  Cell: SAMPLE_NETWORK, View: schematic
xi1 cpinn gnd q<9> q<8> qb<7> qb<6> qb<5> qb<4> qb<3> qb<2> qb<1> vcm vdd vrefn vrefp SAMPLE_NETWORK

** SAMPLE_NETWORK Instance I0 = hspiceD device xi0
** Instance of Lib: LP_SAR,  Cell: SAMPLE_NETWORK, View: schematic
xi0 cpinp gnd qb<9> qb<8> q<7> q<6> q<5> q<4> q<3> q<2> q<1> vcm vdd vrefn vrefp SAMPLE_NETWORK

** COMPARATOR Instance I2 = hspiceD device xi2
** Instance of Lib: LP_SAR,  Cell: COMPARATOR, View: schematic
xi2 clkc net3 net4 gnd net1 net2 coutn coutp vdd cpinp cpinn COMPARATOR

** SAR_LOGIC Instance I3 = hspiceD device xi3
** Instance of Lib: LP_SAR,  Cell: SAR_LOGIC, View: schematic
xi3 clkc clksb gnd coutn coutp q<9> q<8> q<7> q<6> q<5> q<4> q<3> q<2> q<1> qb<9> qb<8> qb<7> qb<6> qb<5> qb<4> qb<3> qb<2> qb<1> vdd q<0> qb<0> est_delay est SAR_LOGIC

** vcvs Instance E0 = hspiceD device e0
** e0 clksb gnd VCVS vdd clks 1

** SAMPLER Instance I11 = hspiceD device xi11
** Instance of Lib: LP_SAR,  Cell: SAMPLER, View: schematic
xi11 clks net05 inp cpinp SAMPLER

** SAMPLER Instance I12 = hspiceD device xi12
** Instance of Lib: LP_SAR,  Cell: SAMPLER, View: schematic
xi12 clks net06 inn cpinn SAMPLER

** COUNTER Instance I13 = hspiceD device xi13
** Instance of Lib: LP_SAR,  Cell: COUNTER, View: schematic
xi13 clksb est_delay estimator<1> estimator<0> gnd coutp vdd COUNTER
.ends ADC_CORE
** End of subcircuit definition.
