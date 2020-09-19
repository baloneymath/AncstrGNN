** Generated for: hspiceD
** Generated on: Feb 23 18:42:39 2019
** Design library name: CONST_EXTR
** Design cell name: COMPARATOR_2LEVEL_BIDIRECTIONAL_MAC_SKEW
** Design view name: schematic


** .TEMP 25.0
** .OPTION
** +    ARTIST=2
** +    INGOLD=2
** +    PARHIER=LOCAL
** +    PSF=2
** .LIB "/usr/local/packages/tsmc_40/pdk/models/hspice/toplevel.l" top_tt

** Library name: tcbn40lpbwp
** Cell name: NR2D2BWP
** View name: schematic
** terminal mapping: A1	= a1
**                   A2	= a2
**                   ZN	= zn
**                   VDD	= vdd
**                   VSS	= vss
.subckt NR2D2BWP a1 a2 zn vdd vss

** nch Instance MI1_1-M_u3 = hspiceD device m0
m0 zn a2 vss vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI1_1-M_u4 = hspiceD device m1
m1 zn a1 vss vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI1_0-M_u4 = hspiceD device m2
m2 zn a1 vss vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** nch Instance MI1_0-M_u3 = hspiceD device m3
m3 zn a2 vss vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** pch Instance MI1_1-M_u2 = hspiceD device m4
m4 zn a1 net17 vdd pch l=40e-9 w=410e-9 m=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=170.732e-3 nrs=170.732e-3 sa=110e-9 sb=110e-9

** pch Instance MI1_0-M_u1 = hspiceD device m5
m5 net25 a2 vdd vdd pch l=40e-9 w=410e-9 m=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=170.732e-3 nrs=170.732e-3 sa=110e-9 sb=110e-9

** pch Instance MI1_0-M_u2 = hspiceD device m6
m6 zn a1 net25 vdd pch l=40e-9 w=410e-9 m=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=170.732e-3 nrs=170.732e-3 sa=110e-9 sb=110e-9

** pch Instance MI1_1-M_u1 = hspiceD device m7
m7 net17 a2 vdd vdd pch l=40e-9 w=410e-9 m=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=170.732e-3 nrs=170.732e-3 sa=110e-9 sb=110e-9
.ends NR2D2BWP
** End of subcircuit definition.

** Library name: tcbn40lpbwp
** Cell name: INVD0BWP
** View name: schematic
** terminal mapping: I	= i
**                   ZN	= zn
**                   VDD	= vdd
**                   VSS	= vss
.subckt INVD0BWP i zn vdd vss

** nch Instance MU1-M_u2 = hspiceD device m0
m0 zn i vss vss nch l=40e-9 w=155e-9 m=1 nf=1 sd=140e-9 ad=17.05e-15 as=17.05e-15 pd=530e-9 ps=530e-9 nrd=451.613e-3 nrs=451.613e-3 sa=110e-9 sb=110e-9

** pch Instance MU1-M_u3 = hspiceD device m1
m1 zn i vdd vdd pch l=40e-9 w=205e-9 m=1 nf=1 sd=140e-9 ad=22.55e-15 as=22.55e-15 pd=630e-9 ps=630e-9 nrd=341.463e-3 nrs=341.463e-3 sa=110e-9 sb=110e-9
.ends INVD0BWP
** End of subcircuit definition.

** Library name: LP_SAR
** Cell name: CLK_BOOST_COMP
** View name: schematic
** terminal mapping: BYPASS	= bypass
**                   CLK_BOOST	= clk_boost
**                   CLK_IN	= clk_in
**                   GND	= gnd
**                   VDD	= vdd
.subckt CLK_BOOST_COMP bypass clk_boost clk_in gnd vdd

** pch_mac Instance M5 = hspiceD device xm5
xm5 net8 net5 vdd vdd pch_mac l=40e-9 w=960e-9 multi=1 nf=2 sd=140e-9 ad=67.2e-15 as=105.6e-15 pd=1.24e-6 ps=2.36e-6 nrd=59.38e-3 nrs=59.38e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_mac Instance M4 = hspiceD device xm4
xm4 clk_boost net6 net8 vdd pch_mac l=40e-9 w=960e-9 multi=1 nf=4 sd=140e-9 ad=67.2e-15 as=86.4e-15 pd=1.52e-6 ps=2.16e-6 nrd=130.495e-3 nrs=130.495e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_mac Instance M1 = hspiceD device xm1
xm1 net5 net6 net8 vdd pch_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=280.589e-3 nrs=280.589e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_mac Instance M6 = hspiceD device xm6
xm6 clk_boost net6 clk_in gnd nch_mac l=40e-9 w=480e-9 multi=1 nf=4 sd=140e-9 ad=33.6e-15 as=43.2e-15 pd=1.04e-6 ps=1.44e-6 nrd=51.227e-3 nrs=51.227e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** nch_mac Instance M2 = hspiceD device xm2
xm2 net5 net6 net013 gnd nch_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** NR2D2BWP Instance I1 = hspiceD device xi1
** Instance of Lib: tcbn40lpbwp,  Cell: NR2D2BWP, View: schematic
xi1 net6 bypass net013 vdd gnd NR2D2BWP

** INVD0BWP Instance I2 = hspiceD device xi2
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi2 clk_in net6 vdd gnd INVD0BWP

** crtmom Instance C2 = hspiceD device xc2
xc2 net013 net8 vdd crtmom nv=70 nh=30 w=70e-9 s=70e-9 stm=2 spm=6 multi=1 ftip=140e-9 dmflag=0

** crtmom Instance C3 = hspiceD device xc3
xc3 net013 net8 vdd crtmom nv=70 nh=30 w=70e-9 s=70e-9 stm=2 spm=6 multi=1 ftip=140e-9 dmflag=0
.ends CLK_BOOST_COMP
** End of subcircuit definition.

** Library name: CONST_EXTR
** Cell name: COMPARATOR_2LEVEL_BIDIRECTIONAL_MAC_SKEW
** View name: schematic
.topckt COMPARATOR_2LEVEL_BIDIRECTIONAL_MAC_SKEW clk clkn fine fine_boost flip flipb gnd intern interp outm outp vdd _net0 _net1 vmid vmidb vxn vxn2 vxp vxp2
** terminal mapping: CLK	= clk
**                   CLKN	= clkn
**                   FINE	= fine
**                   FINE_BOOST	= fine_boost
**                   FLIP	= flip
**                   FLIPB	= flipb
**                   GND	= gnd
**                   INTERN	= intern
**                   INTERP	= interp
**                   OUTM	= outm
**                   OUTP	= outp
**                   VDD	= vdd
**                   VI+	= _net0
**                   VI-	= _net1
**                   VMID	= vmid
**                   VMIDB	= vmidb
**                   VXN	= vxn
**                   VXN2	= vxn2
**                   VXP	= vxp
**                   VXP2	= vxp2

** CLK_BOOST_COMP Instance I3 = hspiceD device xi3
** Instance of Lib: LP_SAR,  Cell: CLK_BOOST_COMP, View: schematic
xi3 gnd fine_boost fine gnd vdd CLK_BOOST_COMP

** INVD0BWP Instance I4 = hspiceD device xi4
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi4 gnd net073 vdd gnd INVD0BWP

** INVD0BWP Instance I0 = hspiceD device xi0
** Instance of Lib: tcbn40lpbwp,  Cell: INVD0BWP, View: schematic
xi0 clk clkb vdd gnd INVD0BWP

** nch_mac Instance M0 = hspiceD device xm0
xm0 gnd net066 gnd gnd nch_mac l=1e-6 w=2e-6 multi=1 nf=1 sd=140e-9 ad=220e-15 as=220e-15 pd=4.22e-6 ps=4.22e-6 nrd=16.426e-3 nrs=16.426e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.76068e-6 sapb=577.831e-9 spba1=1.84662e-6

** nch_mac Instance M1 = hspiceD device xm1
xm1 gnd net065 gnd gnd nch_mac l=1e-6 w=2e-6 multi=1 nf=1 sd=140e-9 ad=220e-15 as=220e-15 pd=4.22e-6 ps=4.22e-6 nrd=16.426e-3 nrs=16.426e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.76068e-6 sapb=577.831e-9 spba1=1.84662e-6

** nch_lvt_mac Instance M56 = hspiceD device xm56
xm56 gnd gnd gnd gnd nch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M52 = hspiceD device xm52
xm52 gnd gnd gnd gnd nch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M51 = hspiceD device xm51
xm51 gnd gnd gnd gnd nch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M50 = hspiceD device xm50
xm50 gnd gnd gnd gnd nch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M12 = hspiceD device xm12
xm12 vxn fine_boost net065 gnd nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=85.854e-3 nrs=85.854e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M10 = hspiceD device xm10
xm10 vxp fine_boost net066 gnd nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=85.854e-3 nrs=85.854e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M31 = hspiceD device xm31
xm31 flipb flip gnd gnd nch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M16 = hspiceD device xm16
xm16 outm intern gnd gnd nch_lvt_mac l=40e-9 w=960e-9 multi=1 nf=4 sd=140e-9 ad=67.2e-15 as=86.4e-15 pd=1.52e-6 ps=2.16e-6 nrd=102.455e-3 nrs=102.455e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** nch_lvt_mac Instance M21 = hspiceD device xm21
xm21 flip clkb gnd gnd nch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M15 = hspiceD device xm15
xm15 net05 clkn gnd gnd nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=4 sd=140e-9 ad=33.6e-15 as=43.2e-15 pd=1.04e-6 ps=1.44e-6 nrd=51.227e-3 nrs=51.227e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** nch_lvt_mac Instance M14 = hspiceD device xm14
xm14 vxn _net0 net05 gnd nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=16 sd=140e-9 ad=134.4e-15 as=144e-15 pd=4.16e-6 ps=4.56e-6 nrd=13.004e-3 nrs=13.004e-3 sa=710.014e-9 sb=710.014e-9 sa1=275.611e-9 sa2=566.444e-9 sa3=840.809e-9 sa4=675.061e-9 sb1=275.611e-9 sb2=566.444e-9 sb3=840.809e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=237.899e-9 spba=162.738e-9 sapb=283.746e-9 spba1=164.536e-9

** nch_lvt_mac Instance M32 = hspiceD device xm32
xm32 clkn flip gnd gnd nch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M37 = hspiceD device xm37
xm37 vxn2 flipb gnd gnd nch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M13 = hspiceD device xm13
xm13 vxp _net1 net05 gnd nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=16 sd=140e-9 ad=134.4e-15 as=144e-15 pd=4.16e-6 ps=4.56e-6 nrd=13.004e-3 nrs=13.004e-3 sa=710.014e-9 sb=710.014e-9 sa1=275.611e-9 sa2=566.444e-9 sa3=840.809e-9 sa4=675.061e-9 sb1=275.611e-9 sb2=566.444e-9 sb3=840.809e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=237.899e-9 spba=162.738e-9 sapb=283.746e-9 spba1=164.536e-9

** nch_lvt_mac Instance M38 = hspiceD device xm38
xm38 vmidb vxn2 gnd gnd nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M43 = hspiceD device xm43
xm43 intern interp vmidb gnd nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_lvt_mac Instance M41 = hspiceD device xm41
xm41 vxp2 flipb gnd gnd nch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M42 = hspiceD device xm42
xm42 interp intern vmid gnd nch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_lvt_mac Instance M39 = hspiceD device xm39
xm39 vmid vxp2 gnd gnd nch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M33 = hspiceD device xm33
xm33 clk flipb clkn gnd nch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M6 = hspiceD device xm6
xm6 outp interp gnd gnd nch_lvt_mac l=40e-9 w=960e-9 multi=1 nf=4 sd=140e-9 ad=67.2e-15 as=86.4e-15 pd=1.52e-6 ps=2.16e-6 nrd=102.455e-3 nrs=102.455e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_lvt_mac Instance M62 = hspiceD device xm62
xm62 vdd clk vxp vdd pch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=280.589e-3 nrs=280.589e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M61 = hspiceD device xm61
xm61 vdd clk vxn vdd pch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=280.589e-3 nrs=280.589e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M58 = hspiceD device xm58
xm58 gnd gnd gnd vdd pch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=280.589e-3 nrs=280.589e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M57 = hspiceD device xm57
xm57 gnd gnd gnd vdd pch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=2 sd=140e-9 ad=16.8e-15 as=26.4e-15 pd=520e-9 ps=920e-9 nrd=133.606e-3 nrs=133.606e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_lvt_mac Instance M55 = hspiceD device xm55
xm55 gnd gnd gnd vdd pch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=280.589e-3 nrs=280.589e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M54 = hspiceD device xm54
xm54 gnd gnd gnd vdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=4 sd=140e-9 ad=33.6e-15 as=43.2e-15 pd=1.04e-6 ps=1.44e-6 nrd=65.248e-3 nrs=65.248e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_lvt_mac Instance M53 = hspiceD device xm53
xm53 gnd gnd gnd vdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=4 sd=140e-9 ad=33.6e-15 as=43.2e-15 pd=1.04e-6 ps=1.44e-6 nrd=65.248e-3 nrs=65.248e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_lvt_mac Instance M17 = hspiceD device xm17
xm17 vxp _net1 net04 vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=16 sd=140e-9 ad=134.4e-15 as=144e-15 pd=4.16e-6 ps=4.56e-6 nrd=16.032e-3 nrs=16.032e-3 sa=710.014e-9 sb=710.014e-9 sa1=275.611e-9 sa2=566.444e-9 sa3=840.809e-9 sa4=675.061e-9 sb1=275.611e-9 sb2=566.444e-9 sb3=840.809e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=237.899e-9 spba=162.738e-9 sapb=283.746e-9 spba1=164.536e-9

** pch_lvt_mac Instance M30 = hspiceD device xm30
xm30 flipb clk vdd vdd pch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=280.589e-3 nrs=280.589e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M28 = hspiceD device xm28
xm28 flip vxn net027 vdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=4 sd=140e-9 ad=33.6e-15 as=43.2e-15 pd=1.04e-6 ps=1.44e-6 nrd=65.248e-3 nrs=65.248e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_lvt_mac Instance M20 = hspiceD device xm20
xm20 net027 clkb vdd vdd pch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=2 sd=140e-9 ad=16.8e-15 as=26.4e-15 pd=520e-9 ps=920e-9 nrd=133.606e-3 nrs=133.606e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_lvt_mac Instance M2 = hspiceD device xm2
xm2 outm intern vdd vdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M29 = hspiceD device xm29
xm29 flip vxp net027 vdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=4 sd=140e-9 ad=33.6e-15 as=43.2e-15 pd=1.04e-6 ps=1.44e-6 nrd=65.248e-3 nrs=65.248e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_lvt_mac Instance M36 = hspiceD device xm36
xm36 vxn2 flipb vxn vdd pch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M19 = hspiceD device xm19
xm19 net04 flipb vdd vdd pch_lvt_mac l=40e-9 w=960e-9 multi=1 nf=8 sd=140e-9 ad=67.2e-15 as=76.8e-15 pd=2.08e-6 ps=2.48e-6 nrd=32.248e-3 nrs=32.248e-3 sa=420.901e-9 sb=420.901e-9 sa1=218.025e-9 sa2=376.982e-9 sa3=612.324e-9 sa4=401.816e-9 sb1=218.025e-9 sb2=376.982e-9 sb3=612.324e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=200.193e-9 spba=164.62e-9 sapb=257.228e-9 spba1=166.439e-9

** pch_lvt_mac Instance M18 = hspiceD device xm18
xm18 vxn _net0 net04 vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=16 sd=140e-9 ad=134.4e-15 as=144e-15 pd=4.16e-6 ps=4.56e-6 nrd=16.032e-3 nrs=16.032e-3 sa=710.014e-9 sb=710.014e-9 sa1=275.611e-9 sa2=566.444e-9 sa3=840.809e-9 sa4=675.061e-9 sb1=275.611e-9 sb2=566.444e-9 sb3=840.809e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=237.899e-9 spba=162.738e-9 sapb=283.746e-9 spba1=164.536e-9

** pch_lvt_mac Instance M34 = hspiceD device xm34
xm34 clk flip clkn vdd pch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=280.589e-3 nrs=280.589e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M40 = hspiceD device xm40
xm40 vxp2 flipb vxp vdd pch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M47 = hspiceD device xm47
xm47 intern vxn2 vdd vdd pch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=280.589e-3 nrs=280.589e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M48 = hspiceD device xm48
xm48 intern interp vdd vdd pch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M45 = hspiceD device xm45
xm45 vmidb vxn2 vdd vdd pch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=280.589e-3 nrs=280.589e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M49 = hspiceD device xm49
xm49 interp intern vdd vdd pch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=561.178e-3 nrs=561.178e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M44 = hspiceD device xm44
xm44 vmid vxp2 vdd vdd pch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=280.589e-3 nrs=280.589e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M9 = hspiceD device xm9
xm9 outp interp vdd vdd pch_lvt_mac l=40e-9 w=480e-9 multi=1 nf=1 sd=140e-9 ad=52.8e-15 as=52.8e-15 pd=1.18e-6 ps=1.18e-6 nrd=124.706e-3 nrs=124.706e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M46 = hspiceD device xm46
xm46 interp vxp2 vdd vdd pch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=280.589e-3 nrs=280.589e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9
.ends COMPARATOR_2LEVEL_BIDIRECTIONAL_MAC_SKEW
** End of subcircuit definition.
