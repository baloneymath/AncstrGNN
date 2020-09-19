** Generated for: hspiceD
** Generated on: Feb 23 19:03:23 2019
** Design library name: CONST_EXTR
** Design cell name: COMP_GM_STAGE_0415
** Design view name: schematic


** .TEMP 25.0
** .OPTION
** +    ARTIST=2
** +    INGOLD=2
** +    PARHIER=LOCAL
** +    PSF=2
** .LIB "/usr/local/packages/tsmc_40/pdk/models/hspice/toplevel.l" top_tt

** Library name: tcbn40lpbwp
** Cell name: INVD1BWP
** View name: schematic
** terminal mapping: I	= i
**                   ZN	= zn
**                   VDD	= vdd
**                   VSS	= vss
.subckt INVD1BWP i zn vdd vss

** nch Instance MU1-M_u2 = hspiceD device m0
m0 zn i vss vss nch l=40e-9 w=310e-9 m=1 nf=1 sd=140e-9 ad=34.1e-15 as=34.1e-15 pd=840e-9 ps=840e-9 nrd=225.806e-3 nrs=225.806e-3 sa=110e-9 sb=110e-9

** pch Instance MU1-M_u3 = hspiceD device m1
m1 zn i vdd vdd pch l=40e-9 w=410e-9 m=1 nf=1 sd=140e-9 ad=45.1e-15 as=45.1e-15 pd=1.04e-6 ps=1.04e-6 nrd=170.732e-3 nrs=170.732e-3 sa=110e-9 sb=110e-9
.ends INVD1BWP
** End of subcircuit definition.

** Library name: 2018_SAR_VCO_CDC_MAY
** Cell name: COMP_GM_STAGE_BIAS_0415
** View name: schematic
** terminal mapping: GND	= gnd
**                   VBN	= vbn
**                   VBP	= vbp
**                   VCM	= vcm
**                   VDD_A	= vdd_a
.subckt COMP_GM_STAGE_BIAS_0415 gnd vbn vbp vcm vdd_a

** nch_lvt_dnw_mac Instance M4 = hspiceD device xm4
xm4 gnd vbn gnd gnd nch_lvt_mac l=2e-6 w=2e-6 multi=5 nf=1 sd=140e-9 ad=220e-15 as=220e-15 pd=4.22e-6 ps=4.22e-6 nrd=16.426e-3 nrs=16.426e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.78885e-6 sapb=577.831e-9 spba1=1.95959e-6

** nch_lvt_dnw_mac Instance M0 = hspiceD device xm0
xm0 vbn vbn gnd gnd nch_lvt_mac l=2e-6 w=2e-6 multi=1 nf=1 sd=140e-9 ad=220e-15 as=220e-15 pd=4.22e-6 ps=4.22e-6 nrd=16.426e-3 nrs=16.426e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.78885e-6 sapb=577.831e-9 spba1=1.95959e-6

** pch_mac Instance M1 = hspiceD device xm1
xm1 vbp vcm net5 net5 pch_mac l=500e-9 w=10e-6 multi=1 nf=2 sd=160e-9 ad=800e-15 as=1.1e-12 pd=10.32e-6 ps=20.44e-6 nrd=4.083e-3 nrs=4.083e-3 sa=282.174e-9 sb=282.174e-9 sa1=151.091e-9 sa2=253.696e-9 sa3=430.652e-9 sa4=193.123e-9 sb1=151.091e-9 sb2=253.696e-9 sb3=430.652e-9 spa=526.132e-9 spa1=356.828e-9 spa2=214.555e-9 spa3=325.268e-9 sap=339.833e-9 spba=960.084e-9 sapb=686.584e-9 spba1=967.137e-9

** pch_mac Instance M5 = hspiceD device xm5
xm5 vbp vbp vbp net5 pch_mac l=500e-9 w=10e-6 multi=1 nf=2 sd=160e-9 ad=800e-15 as=1.1e-12 pd=10.32e-6 ps=20.44e-6 nrd=4.083e-3 nrs=4.083e-3 sa=282.174e-9 sb=282.174e-9 sa1=151.091e-9 sa2=253.696e-9 sa3=430.652e-9 sa4=193.123e-9 sb1=151.091e-9 sb2=253.696e-9 sb3=430.652e-9 spa=526.132e-9 spa1=356.828e-9 spa2=214.555e-9 spa3=325.268e-9 sap=339.833e-9 spba=960.084e-9 sapb=686.584e-9 spba1=967.137e-9

** pch_lvt_mac Instance M8 = hspiceD device xm8
xm8 net5 vbp vdd_a vdd_a pch_lvt_mac l=1e-6 w=8e-6 multi=1 nf=2 sd=160e-9 ad=640e-15 as=880e-15 pd=8.32e-6 ps=16.44e-6 nrd=5.103e-3 nrs=5.103e-3 sa=407.311e-9 sb=407.311e-9 sa1=164.267e-9 sa2=336.76e-9 sa3=451.396e-9 sa4=203.248e-9 sb1=164.267e-9 sb2=336.76e-9 sb3=451.396e-9 spa=526.132e-9 spa1=356.828e-9 spa2=227.515e-9 spa3=417.216e-9 sap=399.754e-9 spba=1.13764e-6 sapb=686.926e-9 spba1=1.15311e-6

** pch_lvt_mac Instance M3 = hspiceD device xm3
xm3 vdd_a vbp vdd_a vdd_a pch_lvt_mac l=1e-6 w=8e-6 multi=5 nf=2 sd=160e-9 ad=640e-15 as=880e-15 pd=8.32e-6 ps=16.44e-6 nrd=5.103e-3 nrs=5.103e-3 sa=407.311e-9 sb=407.311e-9 sa1=164.267e-9 sa2=336.76e-9 sa3=451.396e-9 sa4=203.248e-9 sb1=164.267e-9 sb2=336.76e-9 sb3=451.396e-9 spa=526.132e-9 spa1=356.828e-9 spa2=227.515e-9 spa3=417.216e-9 sap=399.754e-9 spba=1.13764e-6 sapb=686.926e-9 spba1=1.15311e-6
.ends COMP_GM_STAGE_BIAS_0415
** End of subcircuit definition.

** Library name: CONST_EXTR
** Cell name: COMP_GM_STAGE_0415
** View name: schematic
.topckt COMP_GM_STAGE_0415 calm calp cco_icalm cco_icalp clk gnd ictrm ictrp inm inp outm outp valid_vco vbn vbp vcc_comp vcc_gm vcm pre_charge
** terminal mapping: CALM	= calm
**                   CALP	= calp
**                   CCO_ICALM	= cco_icalm
**                   CCO_ICALP	= cco_icalp
**                   CLK	= clk
**                   GND	= gnd
**                   ICTRM	= ictrm
**                   ICTRP	= ictrp
**                   INM	= inm
**                   INP	= inp
**                   OUTM	= outm
**                   OUTP	= outp
**                   VALID_VCO	= valid_vco
**                   VBN	= vbn
**                   VBP	= vbp
**                   VCC_COMP	= vcc_comp
**                   VCC_GM	= vcc_gm
**                   VCM	= vcm
**                   PRE_CHARGE	= pre_charge

** pch_mac Instance M91 = hspiceD device xm91
xm91 net89 valid_vco_d vcc_gm vcc_gm pch_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=267.212e-3 nrs=267.212e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_mac Instance M89 = hspiceD device xm89
xm89 net073 valid_vco_b cco_icalm vcc_gm pch_mac l=40e-9 w=960e-9 multi=1 nf=4 sd=140e-9 ad=67.2e-15 as=86.4e-15 pd=1.52e-6 ps=2.16e-6 nrd=130.495e-3 nrs=130.495e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_mac Instance M90 = hspiceD device xm90
xm90 net073 valid_vco_d vcc_gm vcc_gm pch_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=267.212e-3 nrs=267.212e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_mac Instance M92 = hspiceD device xm92
xm92 net89 valid_vco_b cco_icalp vcc_gm pch_mac l=40e-9 w=960e-9 multi=1 nf=4 sd=140e-9 ad=67.2e-15 as=86.4e-15 pd=1.52e-6 ps=2.16e-6 nrd=130.495e-3 nrs=130.495e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_mac Instance M87 = hspiceD device xm87
xm87 ictrp net89 vcc_gm vcc_gm pch_mac l=4e-6 w=4e-6 multi=1 nf=1 sd=160e-9 ad=560e-15 as=560e-15 pd=8.28e-6 ps=8.28e-6 nrd=5.422e-3 nrs=5.422e-3 sa=140e-9 sb=140e-9 sa1=140e-9 sa2=140e-9 sa3=140e-9 sa4=140e-9 sb1=140e-9 sb2=140e-9 sb3=140e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.0832e-6 spba=1.84391e-6 sapb=613.412e-9 spba1=2.18174e-6

** pch_mac Instance M7 = hspiceD device xm7
xm7 net78 valid_vco_b vbp vcc_gm pch_mac l=40e-9 w=960e-9 multi=1 nf=4 sd=140e-9 ad=67.2e-15 as=86.4e-15 pd=1.52e-6 ps=2.16e-6 nrd=130.495e-3 nrs=130.495e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_mac Instance M4 = hspiceD device xm4
xm4 net78 valid_vco_d vcc_gm vcc_gm pch_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=267.212e-3 nrs=267.212e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_mac Instance M88 = hspiceD device xm88
xm88 ictrm net073 vcc_gm vcc_gm pch_mac l=4e-6 w=4e-6 multi=1 nf=1 sd=160e-9 ad=560e-15 as=560e-15 pd=8.28e-6 ps=8.28e-6 nrd=5.422e-3 nrs=5.422e-3 sa=140e-9 sb=140e-9 sa1=140e-9 sa2=140e-9 sa3=140e-9 sa4=140e-9 sb1=140e-9 sb2=140e-9 sb3=140e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.0832e-6 spba=1.84391e-6 sapb=613.412e-9 spba1=2.18174e-6

** pch_mac Instance M45 = hspiceD device xm45
xm45 net070 net070 net070 net070 pch_mac l=500e-9 w=10e-6 multi=1 nf=2 sd=180e-9 ad=900e-15 as=1.4e-12 pd=10.36e-6 ps=20.56e-6 nrd=2.508e-3 nrs=2.508e-3 sa=321.644e-9 sb=321.644e-9 sa1=188.56e-9 sa2=290.821e-9 sa3=446.114e-9 sa4=239.723e-9 sb1=188.56e-9 sb2=290.821e-9 sb3=446.114e-9 spa=556.326e-9 spa1=384.171e-9 spa2=239.74e-9 spa3=352.858e-9 sap=375.035e-9 spba=1.00404e-6 sapb=728.743e-9 spba1=1.01149e-6

** pch_mac Instance M86 = hspiceD device xm86
xm86 vcc_comp vcc_comp vcc_comp vcc_comp pch_mac l=500e-9 w=20e-6 multi=1 nf=4 sd=180e-9 ad=1.8e-12 as=2.3e-12 pd=20.72e-6 ps=30.92e-6 nrd=1.36e-3 nrs=1.36e-3 sa=642.532e-9 sb=642.532e-9 sa1=250.323e-9 sa2=515.586e-9 sa3=678.951e-9 sa4=423.106e-9 sb1=250.323e-9 sb2=515.586e-9 sb3=678.951e-9 spa=317.692e-9 spa1=257.084e-9 spa2=203.136e-9 spa3=245.079e-9 sap=381.215e-9 spba=443.629e-9 sapb=782.835e-9 spba1=459.598e-9

** pch_mac Instance M64 = hspiceD device xm64
xm64 ictrm valid_vco_b net019 vcc_comp pch_mac l=40e-9 w=960e-9 multi=1 nf=2 sd=140e-9 ad=67.2e-15 as=105.6e-15 pd=1.24e-6 ps=2.36e-6 nrd=59.38e-3 nrs=59.38e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_mac Instance M82 = hspiceD device xm82
xm82 outm net054 vcc_comp vcc_comp pch_mac l=40e-9 w=960e-9 multi=1 nf=2 sd=140e-9 ad=67.2e-15 as=105.6e-15 pd=1.24e-6 ps=2.36e-6 nrd=59.38e-3 nrs=59.38e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_mac Instance M17 = hspiceD device xm17
xm17 net83 valid_vco_d net019 vcc_comp pch_mac l=40e-9 w=960e-9 multi=1 nf=2 sd=140e-9 ad=67.2e-15 as=105.6e-15 pd=1.24e-6 ps=2.36e-6 nrd=59.38e-3 nrs=59.38e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_mac Instance M81 = hspiceD device xm81
xm81 net054 calm net054 net054 pch_mac l=300e-9 w=900e-9 multi=1 nf=1 sd=160e-9 ad=99e-15 as=99e-15 pd=2.02e-6 ps=2.02e-6 nrd=58.456e-3 nrs=58.456e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.74069e-6 sapb=577.831e-9 spba1=1.76661e-6

** pch_mac Instance M11 = hspiceD device xm11
xm11 net019 inp net070 net070 pch_mac l=500e-9 w=50e-6 multi=1 nf=4 sd=180e-9 ad=4.5e-12 as=5.75e-12 pd=50.72e-6 ps=75.92e-6 nrd=526e-6 nrs=526e-6 sa=642.532e-9 sb=642.532e-9 sa1=250.323e-9 sa2=515.586e-9 sa3=678.951e-9 sa4=423.106e-9 sb1=250.323e-9 sb2=515.586e-9 sb3=678.951e-9 spa=317.692e-9 spa1=257.084e-9 spa2=203.136e-9 spa3=245.079e-9 sap=381.215e-9 spba=443.629e-9 sapb=782.835e-9 spba1=459.598e-9

** pch_mac Instance M55 = hspiceD device xm55
xm55 net042 inm net070 net070 pch_mac l=500e-9 w=50e-6 multi=1 nf=4 sd=180e-9 ad=4.5e-12 as=5.75e-12 pd=50.72e-6 ps=75.92e-6 nrd=526e-6 nrs=526e-6 sa=642.532e-9 sb=642.532e-9 sa1=250.323e-9 sa2=515.586e-9 sa3=678.951e-9 sa4=423.106e-9 sb1=250.323e-9 sb2=515.586e-9 sb3=678.951e-9 spa=317.692e-9 spa1=257.084e-9 spa2=203.136e-9 spa3=245.079e-9 sap=381.215e-9 spba=443.629e-9 sapb=782.835e-9 spba1=459.598e-9

** pch_mac Instance M2 = hspiceD device xm2
xm2 net030 net054 net83 vcc_comp pch_mac l=100e-9 w=7.68e-6 multi=1 nf=8 sd=140e-9 ad=537.6e-15 as=614.4e-15 pd=8.8e-6 ps=10.88e-6 nrd=5.265e-3 nrs=5.265e-3 sa=511.581e-9 sb=511.581e-9 sa1=226.066e-9 sa2=437.351e-9 sa3=685.089e-9 sa4=452.343e-9 sb1=226.066e-9 sb2=437.351e-9 sb3=685.089e-9 spa=196.864e-9 spa1=171.954e-9 spa2=146.826e-9 spa3=153.062e-9 sap=263.953e-9 spba=199.053e-9 sapb=370.963e-9 spba1=203.157e-9

** pch_mac Instance M6 = hspiceD device xm6
xm6 outp net030 vcc_comp vcc_comp pch_mac l=40e-9 w=960e-9 multi=1 nf=2 sd=140e-9 ad=67.2e-15 as=105.6e-15 pd=1.24e-6 ps=2.36e-6 nrd=59.38e-3 nrs=59.38e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_mac Instance M76 = hspiceD device xm76
xm76 ictrp valid_vco_b net042 vcc_comp pch_mac l=40e-9 w=960e-9 multi=1 nf=2 sd=140e-9 ad=67.2e-15 as=105.6e-15 pd=1.24e-6 ps=2.36e-6 nrd=59.38e-3 nrs=59.38e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_mac Instance M78 = hspiceD device xm78
xm78 net054 net030 net90 vcc_comp pch_mac l=100e-9 w=7.68e-6 multi=1 nf=8 sd=140e-9 ad=537.6e-15 as=614.4e-15 pd=8.8e-6 ps=10.88e-6 nrd=5.265e-3 nrs=5.265e-3 sa=511.581e-9 sb=511.581e-9 sa1=226.066e-9 sa2=437.351e-9 sa3=685.089e-9 sa4=452.343e-9 sb1=226.066e-9 sb2=437.351e-9 sb3=685.089e-9 spa=196.864e-9 spa1=171.954e-9 spa2=146.826e-9 spa3=153.062e-9 sap=263.953e-9 spba=199.053e-9 sapb=370.963e-9 spba1=203.157e-9

** pch_mac Instance M73 = hspiceD device xm73
xm73 net90 valid_vco_d net042 vcc_comp pch_mac l=40e-9 w=960e-9 multi=1 nf=2 sd=140e-9 ad=67.2e-15 as=105.6e-15 pd=1.24e-6 ps=2.36e-6 nrd=59.38e-3 nrs=59.38e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_mac Instance M13 = hspiceD device xm13
xm13 net030 calp net030 net030 pch_mac l=300e-9 w=900e-9 multi=1 nf=1 sd=160e-9 ad=99e-15 as=99e-15 pd=2.02e-6 ps=2.02e-6 nrd=58.456e-3 nrs=58.456e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.74069e-6 sapb=577.831e-9 spba1=1.76661e-6

** nch_mac Instance M44 = hspiceD device xm44
xm44 ictrp valid_vco_b pre_charge gnd nch_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_mac Instance M43 = hspiceD device xm43
xm43 ictrm valid_vco_b pre_charge gnd nch_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_mac Instance M63 = hspiceD device xm63
xm63 ictrm valid_vco_d net019 gnd nch_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_mac Instance M83 = hspiceD device xm83
xm83 outm net054 gnd gnd nch_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_mac Instance M19 = hspiceD device xm19
xm19 net83 valid_vco_b net019 gnd nch_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_mac Instance M80 = hspiceD device xm80
xm80 net054 clkb gnd gnd nch_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_mac Instance M74 = hspiceD device xm74
xm74 net90 valid_vco_b net042 gnd nch_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_mac Instance M26 = hspiceD device xm26
xm26 net83 clkb gnd gnd nch_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_mac Instance M75 = hspiceD device xm75
xm75 net90 clkb gnd gnd nch_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_mac Instance M77 = hspiceD device xm77
xm77 ictrp valid_vco_d net042 gnd nch_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_mac Instance M21 = hspiceD device xm21
xm21 outp net030 gnd gnd nch_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_mac Instance M79 = hspiceD device xm79
xm79 net054 net030 gnd gnd nch_mac l=100e-9 w=3.84e-6 multi=1 nf=8 sd=140e-9 ad=268.8e-15 as=307.2e-15 pd=4.96e-6 ps=6.08e-6 nrd=11.5e-3 nrs=11.5e-3 sa=511.581e-9 sb=511.581e-9 sa1=226.066e-9 sa2=437.351e-9 sa3=685.089e-9 sa4=452.343e-9 sb1=226.066e-9 sb2=437.351e-9 sb3=685.089e-9 spa=196.864e-9 spa1=171.954e-9 spa2=146.826e-9 spa3=153.062e-9 sap=263.953e-9 spba=199.053e-9 sapb=370.963e-9 spba1=203.157e-9

** nch_mac Instance M23 = hspiceD device xm23
xm23 net030 clkb gnd gnd nch_mac l=40e-9 w=240e-9 multi=1 nf=1 sd=140e-9 ad=26.4e-15 as=26.4e-15 pd=700e-9 ps=700e-9 nrd=386.341e-3 nrs=386.341e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_mac Instance M18 = hspiceD device xm18
xm18 net030 net054 gnd gnd nch_mac l=100e-9 w=3.84e-6 multi=1 nf=8 sd=140e-9 ad=268.8e-15 as=307.2e-15 pd=4.96e-6 ps=6.08e-6 nrd=11.5e-3 nrs=11.5e-3 sa=511.581e-9 sb=511.581e-9 sa1=226.066e-9 sa2=437.351e-9 sa3=685.089e-9 sa4=452.343e-9 sb1=226.066e-9 sb2=437.351e-9 sb3=685.089e-9 spa=196.864e-9 spa1=171.954e-9 spa2=146.826e-9 spa3=153.062e-9 sap=263.953e-9 spba=199.053e-9 sapb=370.963e-9 spba1=203.157e-9

** pch_lvt_mac Instance M57 = hspiceD device xm57
xm57 vcc_gm vbp vcc_gm vcc_gm pch_lvt_mac l=4.5e-6 w=5e-6 multi=2 nf=1 sd=160e-9 ad=550e-15 as=550e-15 pd=10.22e-6 ps=10.22e-6 nrd=9.544e-3 nrs=9.544e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.85742e-6 sapb=577.831e-9 spba1=2.23663e-6

** pch_lvt_mac Instance M56 = hspiceD device xm56
xm56 vcc_gm vbp vcc_gm vcc_gm pch_lvt_mac l=5e-6 w=5e-6 multi=8 nf=1 sd=160e-9 ad=550e-15 as=550e-15 pd=10.22e-6 ps=10.22e-6 nrd=9.544e-3 nrs=9.544e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.87083e-6 sapb=577.831e-9 spba1=2.29129e-6

** pch_lvt_mac Instance M52 = hspiceD device xm52
xm52 net070 clkb net036 net036 pch_lvt_mac l=40e-9 w=2e-6 multi=1 nf=1 sd=160e-9 ad=280e-15 as=280e-15 pd=4.28e-6 ps=4.28e-6 nrd=10.844e-3 nrs=10.844e-3 sa=140e-9 sb=140e-9 sa1=140e-9 sa2=140e-9 sa3=140e-9 sa4=140e-9 sb1=140e-9 sb2=140e-9 sb3=140e-9 spa=170e-9 spa1=170e-9 spa2=170e-9 spa3=170e-9 sap=160.462e-9 spba=816.346e-9 sapb=1.67836e-6 spba1=816.772e-9

** pch_lvt_mac Instance M51 = hspiceD device xm51
xm51 net036 vbp vcc_comp vcc_gm pch_lvt_mac l=1e-6 w=8e-6 multi=10 nf=2 sd=180e-9 ad=720e-15 as=1.12e-12 pd=8.36e-6 ps=16.56e-6 nrd=3.135e-3 nrs=3.135e-3 sa=446.992e-9 sb=446.992e-9 sa1=201.896e-9 sa2=374.119e-9 sa3=462.303e-9 sa4=253.875e-9 sb1=201.896e-9 sb2=374.119e-9 sb3=462.303e-9 spa=556.326e-9 spa1=384.171e-9 spa2=252.691e-9 spa3=444.013e-9 sap=437.622e-9 spba=1.17881e-6 sapb=729.169e-9 spba1=1.19518e-6

** pch_lvt_mac Instance M0 = hspiceD device xm0
xm0 net070 net78 vcc_gm vcc_gm pch_lvt_mac l=1e-6 w=8e-6 multi=10 nf=2 sd=180e-9 ad=720e-15 as=1.12e-12 pd=8.36e-6 ps=16.56e-6 nrd=3.135e-3 nrs=3.135e-3 sa=446.992e-9 sb=446.992e-9 sa1=201.896e-9 sa2=374.119e-9 sa3=462.303e-9 sa4=253.875e-9 sb1=201.896e-9 sb2=374.119e-9 sb3=462.303e-9 spa=556.326e-9 spa1=384.171e-9 spa2=252.691e-9 spa3=444.013e-9 sap=437.622e-9 spba=1.17881e-6 sapb=729.169e-9 spba1=1.19518e-6

** INVD1BWP Instance I4<1:0> = hspiceD device xi4<1>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD1BWP, View: schematic
xi4<1> valid_vco valid_vco_b vcc_comp gnd INVD1BWP

** INVD1BWP Instance I4<1:0> = hspiceD device xi4<0>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD1BWP, View: schematic
xi4<0> valid_vco valid_vco_b vcc_comp gnd INVD1BWP

** INVD1BWP Instance I5<1:0> = hspiceD device xi5<1>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD1BWP, View: schematic
xi5<1> valid_vco_b valid_vco_d vcc_comp gnd INVD1BWP

** INVD1BWP Instance I5<1:0> = hspiceD device xi5<0>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD1BWP, View: schematic
xi5<0> valid_vco_b valid_vco_d vcc_comp gnd INVD1BWP

** INVD1BWP Instance I6<1:0> = hspiceD device xi6<1>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD1BWP, View: schematic
xi6<1> clk clkb vcc_comp gnd INVD1BWP

** INVD1BWP Instance I6<1:0> = hspiceD device xi6<0>
** Instance of Lib: tcbn40lpbwp,  Cell: INVD1BWP, View: schematic
xi6<0> clk clkb vcc_comp gnd INVD1BWP

** nch_lvt_dnw_mac Instance M38 = hspiceD device xm38
xm38 ictrm net089 gnd gnd nch_lvt_mac l=2e-6 w=2e-6 multi=10 nf=1 sd=140e-9 ad=220e-15 as=220e-15 pd=4.22e-6 ps=4.22e-6 nrd=16.426e-3 nrs=16.426e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.78885e-6 sapb=577.831e-9 spba1=1.95959e-6

** nch_lvt_dnw_mac Instance M33 = hspiceD device xm33
xm33 ictrp net059 gnd gnd nch_lvt_mac l=2e-6 w=2e-6 multi=10 nf=1 sd=160e-9 ad=280e-15 as=280e-15 pd=4.28e-6 ps=4.28e-6 nrd=8.892e-3 nrs=8.892e-3 sa=140e-9 sb=140e-9 sa1=140e-9 sa2=140e-9 sa3=140e-9 sa4=140e-9 sb1=140e-9 sb2=140e-9 sb3=140e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.0832e-6 spba=1.78885e-6 sapb=613.412e-9 spba1=1.95959e-6

** dnwpsub Instance D2 = hspiceD device d2
d2 gnd vcc_gm dnwpsub area=678.97e-12 pj=106.16e-6 m=1

** pwdnw Instance D0 = hspiceD device d0
d0 gnd vcc_gm pwdnw area=495.033e-12 pj=103.03e-6 m=1

** nch_dnw_mac Instance M9 = hspiceD device xm9
xm9 net089 valid_vco_d vbn gnd nch_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_dnw_mac Instance M8 = hspiceD device xm8
xm8 net059 valid_vco_d vbn gnd nch_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_dnw_mac Instance M5 = hspiceD device xm5
xm5 net059 valid_vco_b gnd gnd nch_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_dnw_mac Instance M10 = hspiceD device xm10
xm10 net089 valid_vco_b gnd gnd nch_mac l=40e-9 w=480e-9 multi=1 nf=2 sd=140e-9 ad=33.6e-15 as=52.8e-15 pd=760e-9 ps=1.4e-6 nrd=200.841e-3 nrs=200.841e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** nch_lvt_mac Instance M12 = hspiceD device xm12
xm12 gnd vbn gnd gnd nch_lvt_mac l=2e-6 w=4e-6 multi=2 nf=1 sd=160e-9 ad=440e-15 as=440e-15 pd=8.22e-6 ps=8.22e-6 nrd=8.213e-3 nrs=8.213e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.78885e-6 sapb=577.831e-9 spba1=1.95959e-6

** nch_lvt_mac Instance M3 = hspiceD device xm3
xm3 gnd vbn gnd gnd nch_lvt_mac l=4e-6 w=2e-6 multi=12 nf=1 sd=160e-9 ad=220e-15 as=220e-15 pd=4.22e-6 ps=4.22e-6 nrd=16.426e-3 nrs=16.426e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.84391e-6 sapb=577.831e-9 spba1=2.18174e-6

** nch_lvt_mac Instance M1 = hspiceD device xm1
xm1 gnd vbn gnd gnd nch_lvt_mac l=4e-6 w=4e-6 multi=4 nf=1 sd=140e-9 ad=440e-15 as=440e-15 pd=8.22e-6 ps=8.22e-6 nrd=8.213e-3 nrs=8.213e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.84391e-6 sapb=577.831e-9 spba1=2.18174e-6

** COMP_GM_STAGE_BIAS_0415 Instance I0 = hspiceD device xi0
** Instance of Lib: 2018_SAR_VCO_CDC_MAY,  Cell: COMP_GM_STAGE_BIAS_0415, View: schematic
xi0 gnd vbn vbp vcm vcc_gm COMP_GM_STAGE_BIAS_0415
.ends COMP_GM_STAGE_0415
** End of subcircuit definition.
