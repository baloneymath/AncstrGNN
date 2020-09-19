** Generated for: hspiceD
** Generated on: Feb 23 19:02:05 2019
** Design library name: CONST_EXTR
** Design cell name: Comparator_1to7_0p7_lvt
** Design view name: schematic


** .TEMP 25.0
** .OPTION
** +    ARTIST=2
** +    INGOLD=2
** +    PARHIER=LOCAL
** +    PSF=2
** .LIB "/usr/local/packages/tsmc_40/pdk/models/hspice/toplevel.l" top_tt

** Library name: CONST_EXTR
** Cell name: Comparator_1to7_0p7_lvt
** View name: schematic
.topckt Comparator_1to7_0p7_lvt caln calp clke d db inm<0> inm<1> inp<0> inp<1> vb vdd vss
** terminal mapping: CALN	= caln
**                   CALP	= calp
**                   CLKE	= clke
**                   D	= d
**                   DB	= db
**                   INM<0>	= inm<0>
**                   INM<1>	= inm<1>
**                   INP<0>	= inp<0>
**                   INP<1>	= inp<1>
**                   VB	= vb
**                   VDD	= vdd
**                   VSS	= vss

** pch_lvt_mac Instance M29 = hspiceD device xm29
xm29 vout1p clk vdd vdd pch_lvt_mac l=40e-9 w=1.6e-6 multi=1 nf=2 sd=140e-9 ad=112e-15 as=176e-15 pd=1.88e-6 ps=3.64e-6 nrd=35.628e-3 nrs=35.628e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_lvt_mac Instance M32 = hspiceD device xm32
xm32 vout1m clk vdd vdd pch_lvt_mac l=40e-9 w=1.6e-6 multi=1 nf=2 sd=140e-9 ad=112e-15 as=176e-15 pd=1.88e-6 ps=3.64e-6 nrd=35.628e-3 nrs=35.628e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_lvt_mac Instance M18 = hspiceD device xm18
xm18 clk net043 vdd vdd pch_lvt_mac l=40e-9 w=3.2e-6 multi=1 nf=4 sd=140e-9 ad=224e-15 as=288e-15 pd=3.76e-6 ps=5.52e-6 nrd=17.399e-3 nrs=17.399e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_lvt_mac Instance M19 = hspiceD device xm19
xm19 net043 clke vdd vdd pch_lvt_mac l=40e-9 w=800e-9 multi=1 nf=2 sd=140e-9 ad=56e-15 as=88e-15 pd=1.08e-6 ps=2.04e-6 nrd=49.484e-3 nrs=49.484e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_lvt_mac Instance M7 = hspiceD device xm7
xm7 db vout2p vdd vdd pch_lvt_mac l=40e-9 w=600e-9 multi=1 nf=1 sd=140e-9 ad=66e-15 as=66e-15 pd=1.42e-6 ps=1.42e-6 nrd=87.684e-3 nrs=87.684e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M28 = hspiceD device xm28
xm28 vout2p vout2m vdd vdd pch_lvt_mac l=120e-9 w=12.8e-6 multi=1 nf=8 sd=140e-9 ad=896e-15 as=1.024e-12 pd=13.92e-6 ps=17.28e-6 nrd=3.554e-3 nrs=3.554e-3 sa=541.635e-9 sb=541.635e-9 sa1=228.497e-9 sa2=456.311e-9 sa3=705.096e-9 sa4=466.864e-9 sb1=228.497e-9 sb2=456.311e-9 sb3=705.096e-9 spa=196.864e-9 spa1=171.954e-9 spa2=146.917e-9 spa3=153.744e-9 sap=269.76e-9 spba=208.557e-9 sapb=400.029e-9 spba1=213.315e-9

** pch_lvt_mac Instance M38 = hspiceD device xm38
xm38 vdd vss vdd vdd pch_lvt_mac l=40e-9 w=800e-9 multi=1 nf=2 sd=140e-9 ad=56e-15 as=88e-15 pd=1.08e-6 ps=2.04e-6 nrd=49.484e-3 nrs=49.484e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_lvt_mac Instance M39 = hspiceD device xm39
xm39 vdd vss vdd vdd pch_lvt_mac l=40e-9 w=3.2e-6 multi=1 nf=4 sd=140e-9 ad=224e-15 as=288e-15 pd=3.76e-6 ps=5.52e-6 nrd=17.399e-3 nrs=17.399e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_lvt_mac Instance M34 = hspiceD device xm34
xm34 vout2m vout2p vdd vdd pch_lvt_mac l=120e-9 w=12.8e-6 multi=1 nf=8 sd=140e-9 ad=896e-15 as=1.024e-12 pd=13.92e-6 ps=17.28e-6 nrd=3.554e-3 nrs=3.554e-3 sa=541.635e-9 sb=541.635e-9 sa1=228.497e-9 sa2=456.311e-9 sa3=705.096e-9 sa4=466.864e-9 sb1=228.497e-9 sb2=456.311e-9 sb3=705.096e-9 spa=196.864e-9 spa1=171.954e-9 spa2=146.917e-9 spa3=153.744e-9 sap=269.76e-9 spba=208.557e-9 sapb=400.029e-9 spba1=213.315e-9

** pch_lvt_mac Instance M25 = hspiceD device xm25
xm25 vout2p clk vdd vdd pch_lvt_mac l=40e-9 w=800e-9 multi=1 nf=2 sd=140e-9 ad=56e-15 as=88e-15 pd=1.08e-6 ps=2.04e-6 nrd=49.484e-3 nrs=49.484e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_lvt_mac Instance M8 = hspiceD device xm8
xm8 d vout2m vdd vdd pch_lvt_mac l=40e-9 w=600e-9 multi=1 nf=1 sd=140e-9 ad=66e-15 as=66e-15 pd=1.42e-6 ps=1.42e-6 nrd=87.684e-3 nrs=87.684e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M33 = hspiceD device xm33
xm33 vout2m clk vdd vdd pch_lvt_mac l=40e-9 w=800e-9 multi=1 nf=2 sd=140e-9 ad=56e-15 as=88e-15 pd=1.08e-6 ps=2.04e-6 nrd=49.484e-3 nrs=49.484e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_lvt_mac Instance M35 = hspiceD device xm35
xm35 net058 clk net040 vss nch_lvt_mac l=40e-9 w=1e-6 multi=1 nf=1 sd=140e-9 ad=110e-15 as=110e-15 pd=2.22e-6 ps=2.22e-6 nrd=32.852e-3 nrs=32.852e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M10 = hspiceD device xm10
xm10 vout1m inp<0> net058 vss nch_lvt_mac l=200e-9 w=1.2e-6 multi=1 nf=1 sd=140e-9 ad=132e-15 as=132e-15 pd=2.62e-6 ps=2.62e-6 nrd=30.183e-3 nrs=30.183e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73781e-6 sapb=577.831e-9 spba1=1.75511e-6

** nch_lvt_mac Instance M36 = hspiceD device xm36
xm36 net040 vb vss vss nch_lvt_mac l=40e-9 w=1e-6 multi=1 nf=1 sd=140e-9 ad=110e-15 as=110e-15 pd=2.22e-6 ps=2.22e-6 nrd=32.852e-3 nrs=32.852e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M9 = hspiceD device xm9
xm9 d vout2m vss vss nch_lvt_mac l=40e-9 w=400e-9 multi=1 nf=1 sd=140e-9 ad=44e-15 as=44e-15 pd=1.02e-6 ps=1.02e-6 nrd=71.545e-3 nrs=71.545e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M48 = hspiceD device xm48
xm48 vss vdd vss vss nch_lvt_mac l=160e-9 w=2.4e-6 multi=1 nf=2 sd=160e-9 ad=192e-15 as=264e-15 pd=2.72e-6 ps=5.24e-6 nrd=14.461e-3 nrs=14.461e-3 sa=196.857e-9 sb=196.857e-9 sa1=141.575e-9 sa2=190.476e-9 sa3=316.284e-9 sa4=175.574e-9 sb1=141.575e-9 sb2=190.476e-9 sb3=316.284e-9 spa=526.132e-9 spa1=356.828e-9 spa2=205.731e-9 spa3=258.385e-9 sap=280.768e-9 spba=836.217e-9 sapb=685.762e-9 spba1=838.359e-9

** nch_lvt_mac Instance M41 = hspiceD device xm41
xm41 vss vdd vss vss nch_lvt_mac l=40e-9 w=400e-9 multi=1 nf=2 sd=140e-9 ad=28e-15 as=44e-15 pd=680e-9 ps=1.24e-6 nrd=167.368e-3 nrs=167.368e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_lvt_mac Instance M43 = hspiceD device xm43
xm43 vss vdd vss vss nch_lvt_mac l=40e-9 w=6e-6 multi=1 nf=6 sd=140e-9 ad=420e-15 as=500e-15 pd=6.84e-6 ps=9e-6 nrd=5.848e-3 nrs=5.848e-3 sa=341.472e-9 sb=341.472e-9 sa1=197.813e-9 sa2=316.439e-9 sa3=523.981e-9 sa4=327.012e-9 sb1=197.813e-9 sb2=316.439e-9 sb3=523.981e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=186.948e-9 spba=165.964e-9 sapb=248.903e-9 spba1=167.797e-9

** nch_lvt_mac Instance M42 = hspiceD device xm42
xm42 vss vdd vss vss nch_lvt_mac l=40e-9 w=800e-9 multi=1 nf=2 sd=140e-9 ad=56e-15 as=88e-15 pd=1.08e-6 ps=2.04e-6 nrd=37.193e-3 nrs=37.193e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_lvt_mac Instance M11 = hspiceD device xm11
xm11 vout1p inm<0> net058 vss nch_lvt_mac l=200e-9 w=1.2e-6 multi=1 nf=1 sd=140e-9 ad=132e-15 as=132e-15 pd=2.62e-6 ps=2.62e-6 nrd=30.183e-3 nrs=30.183e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73781e-6 sapb=577.831e-9 spba1=1.75511e-6

** nch_lvt_mac Instance M26 = hspiceD device xm26
xm26 clk net043 vss vss nch_lvt_mac l=40e-9 w=800e-9 multi=1 nf=2 sd=140e-9 ad=56e-15 as=88e-15 pd=1.08e-6 ps=2.04e-6 nrd=37.193e-3 nrs=37.193e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_lvt_mac Instance M14 = hspiceD device xm14
xm14 vout2p vout2m vout1p vss nch_lvt_mac l=120e-9 w=6.4e-6 multi=1 nf=8 sd=140e-9 ad=448e-15 as=512e-15 pd=7.52e-6 ps=9.28e-6 nrd=6.9e-3 nrs=6.9e-3 sa=541.635e-9 sb=541.635e-9 sa1=228.497e-9 sa2=456.311e-9 sa3=705.096e-9 sa4=466.864e-9 sb1=228.497e-9 sb2=456.311e-9 sb3=705.096e-9 spa=196.864e-9 spa1=171.954e-9 spa2=146.917e-9 spa3=153.744e-9 sap=269.76e-9 spba=208.557e-9 sapb=400.029e-9 spba1=213.315e-9

** nch_lvt_mac Instance M12 = hspiceD device xm12
xm12 vout1p inm<1> net057 vss nch_lvt_mac l=200e-9 w=1.2e-6 multi=7 nf=1 sd=140e-9 ad=132e-15 as=132e-15 pd=2.62e-6 ps=2.62e-6 nrd=30.183e-3 nrs=30.183e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73781e-6 sapb=577.831e-9 spba1=1.75511e-6

** nch_lvt_mac Instance M37 = hspiceD device xm37
xm37 net041 vb vss vss nch_lvt_mac l=40e-9 w=1e-6 multi=7 nf=1 sd=140e-9 ad=110e-15 as=110e-15 pd=2.22e-6 ps=2.22e-6 nrd=32.852e-3 nrs=32.852e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M40 = hspiceD device xm40
xm40 net057 clk net041 vss nch_lvt_mac l=40e-9 w=1e-6 multi=7 nf=1 sd=140e-9 ad=110e-15 as=110e-15 pd=2.22e-6 ps=2.22e-6 nrd=32.852e-3 nrs=32.852e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M6 = hspiceD device xm6
xm6 db vout2p vss vss nch_lvt_mac l=40e-9 w=400e-9 multi=1 nf=1 sd=140e-9 ad=44e-15 as=44e-15 pd=1.02e-6 ps=1.02e-6 nrd=71.545e-3 nrs=71.545e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M27 = hspiceD device xm27
xm27 net043 clke vss vss nch_lvt_mac l=40e-9 w=400e-9 multi=1 nf=2 sd=140e-9 ad=28e-15 as=44e-15 pd=680e-9 ps=1.24e-6 nrd=167.368e-3 nrs=167.368e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_lvt_mac Instance M13 = hspiceD device xm13
xm13 vout1m inp<1> net057 vss nch_lvt_mac l=200e-9 w=1.2e-6 multi=7 nf=1 sd=140e-9 ad=132e-15 as=132e-15 pd=2.62e-6 ps=2.62e-6 nrd=30.183e-3 nrs=30.183e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73781e-6 sapb=577.831e-9 spba1=1.75511e-6

** nch_lvt_mac Instance M21 = hspiceD device xm21
xm21 vout2m vout2p vout1m vss nch_lvt_mac l=120e-9 w=6.4e-6 multi=1 nf=8 sd=140e-9 ad=448e-15 as=512e-15 pd=7.52e-6 ps=9.28e-6 nrd=6.9e-3 nrs=6.9e-3 sa=541.635e-9 sb=541.635e-9 sa1=228.497e-9 sa2=456.311e-9 sa3=705.096e-9 sa4=466.864e-9 sb1=228.497e-9 sb2=456.311e-9 sb3=705.096e-9 spa=196.864e-9 spa1=171.954e-9 spa2=146.917e-9 spa3=153.744e-9 sap=269.76e-9 spba=208.557e-9 sapb=400.029e-9 spba1=213.315e-9

** pch_lvt Instance M1 = hspiceD device m1
m1 vout2m calp vout2m vout2m pch_lvt l=500e-9 w=16e-6 m=1 nf=2 sd=160e-9 ad=1.28e-12 as=1.76e-12 pd=16.32e-6 ps=32.44e-6 nrd=2.463e-3 nrs=2.463e-3 sa=282.174e-9 sb=282.174e-9

** pch_lvt Instance M2 = hspiceD device m2
m2 vout2p vss vout2p vout2p pch_lvt l=500e-9 w=64e-6 m=1 nf=8 sd=160e-9 ad=5.12e-12 as=5.6e-12 pd=65.28e-6 ps=81.4e-6 nrd=556e-6 nrs=556e-6 sa=1.12466e-6 sb=1.12466e-6

** pch_lvt Instance M3 = hspiceD device m3
m3 vout2p caln vout2p vout2p pch_lvt l=500e-9 w=16e-6 m=1 nf=2 sd=160e-9 ad=1.28e-12 as=1.76e-12 pd=16.32e-6 ps=32.44e-6 nrd=2.463e-3 nrs=2.463e-3 sa=282.174e-9 sb=282.174e-9

** pch_lvt Instance M0 = hspiceD device m0
m0 vout2m vss vout2m vout2m pch_lvt l=500e-9 w=64e-6 m=1 nf=8 sd=160e-9 ad=5.12e-12 as=5.6e-12 pd=65.28e-6 ps=81.4e-6 nrd=556e-6 nrs=556e-6 sa=1.12466e-6 sb=1.12466e-6
.ends Comparator_1to7_0p7_lvt
** End of subcircuit definition.
