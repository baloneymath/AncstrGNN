** Generated for: hspiceD
** Generated on: Feb 23 18:58:08 2019
** Design library name: NewRipple_SAR_10bit_FF
** Design cell name: AND_PREAMP_v5
** Design view name: schematic


** .TEMP 25.0
** .OPTION
** +    ARTIST=2
** +    INGOLD=2
** +    PARHIER=LOCAL
** +    PSF=2
** .LIB "/usr/local/packages/tsmc_40/pdk/models/hspice/toplevel.l" top_tt

** Library name: NewRipple_SAR_10bit_FF
** Cell name: AND8_half_v5
** View name: schematic
** terminal mapping: BEGIN_B	= begin_b
**                   CBBB1	= cbbb1
**                   GND	= gnd
**                   L<6>	= l<6>
**                   L<5>	= l<5>
**                   L<4>	= l<4>
**                   R1B<6>	= r1b<6>
**                   R1B<5>	= r1b<5>
**                   R1B<4>	= r1b<4>
**                   VDD_AND	= vdd_and
.subckt AND8_half_v5 begin_b cbbb1 gnd l<6> l<5> l<4> r1b<6> r1b<5> r1b<4> vdd_and

** pch_lvt_mac Instance M104 = hspiceD device xm104
xm104 cbbb1 r1b<5> net024 vdd_and pch_lvt_mac l=40e-9 w=820e-9 multi=1 nf=4 sd=140e-9 ad=57.4e-15 as=73.8e-15 pd=1.38e-6 ps=1.95e-6 nrd=111.465e-3 nrs=111.465e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_lvt_mac Instance M112 = hspiceD device xm112
xm112 net024 l<4> vdd_and vdd_and pch_lvt_mac l=40e-9 w=4.1e-6 multi=1 nf=5 sd=140e-9 ad=319.8e-15 as=319.8e-15 pd=5.7e-6 ps=5.7e-6 nrd=9.862e-3 nrs=9.862e-3 sa=299.94e-9 sb=299.94e-9 sa1=185.996e-9 sa2=282.841e-9 sa3=469.591e-9 sa4=287.96e-9 sb1=185.996e-9 sb2=282.841e-9 sb3=469.591e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=179.215e-9 spba=167.096e-9 sapb=244.603e-9 spba1=168.943e-9

** pch_lvt_mac Instance M103 = hspiceD device xm103
xm103 cbbb1 r1b<4> vdd_and vdd_and pch_lvt_mac l=40e-9 w=1.23e-6 multi=1 nf=2 sd=140e-9 ad=86.1e-15 as=135.3e-15 pd=1.51e-6 ps=2.9e-6 nrd=42.796e-3 nrs=42.796e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_lvt_mac Instance M113 = hspiceD device xm113
xm113 net027 l<5> vdd_and vdd_and pch_lvt_mac l=40e-9 w=3.28e-6 multi=1 nf=16 sd=140e-9 ad=229.6e-15 as=246e-15 pd=5.52e-6 ps=6.09e-6 nrd=27.388e-3 nrs=27.388e-3 sa=710.014e-9 sb=710.014e-9 sa1=275.611e-9 sa2=566.444e-9 sa3=840.809e-9 sa4=675.061e-9 sb1=275.611e-9 sb2=566.444e-9 sb3=840.809e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=237.899e-9 spba=162.738e-9 sapb=283.746e-9 spba1=164.536e-9

** pch_lvt_mac Instance M105 = hspiceD device xm105
xm105 cbbb1 r1b<6> net027 vdd_and pch_lvt_mac l=40e-9 w=820e-9 multi=1 nf=4 sd=140e-9 ad=57.4e-15 as=73.8e-15 pd=1.38e-6 ps=1.95e-6 nrd=111.465e-3 nrs=111.465e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_lvt_mac Instance M107 = hspiceD device xm107
xm107 net028 begin_b vdd_and vdd_and pch_lvt_mac l=40e-9 w=3.28e-6 multi=1 nf=16 sd=140e-9 ad=229.6e-15 as=246e-15 pd=5.52e-6 ps=6.09e-6 nrd=27.388e-3 nrs=27.388e-3 sa=710.014e-9 sb=710.014e-9 sa1=275.611e-9 sa2=566.444e-9 sa3=840.809e-9 sa4=675.061e-9 sb1=275.611e-9 sb2=566.444e-9 sb3=840.809e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=237.899e-9 spba=162.738e-9 sapb=283.746e-9 spba1=164.536e-9

** pch_lvt_mac Instance M98 = hspiceD device xm98
xm98 cbbb1 l<6> net028 vdd_and pch_lvt_mac l=40e-9 w=820e-9 multi=1 nf=4 sd=140e-9 ad=57.4e-15 as=73.8e-15 pd=1.38e-6 ps=1.95e-6 nrd=111.465e-3 nrs=111.465e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** nch_lvt_mac Instance M92 = hspiceD device xm92
xm92 cbbb1 l<6> net026 gnd nch_lvt_mac l=40e-9 w=620e-9 multi=1 nf=4 sd=140e-9 ad=43.4e-15 as=55.8e-15 pd=1.18e-6 ps=1.65e-6 nrd=66.169e-3 nrs=66.169e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** nch_lvt_mac Instance M86 = hspiceD device xm86
xm86 net026 r1b<6> gnd gnd nch_lvt_mac l=40e-9 w=2.48e-6 multi=1 nf=16 sd=140e-9 ad=173.6e-15 as=186e-15 pd=4.72e-6 ps=5.19e-6 nrd=16.797e-3 nrs=16.797e-3 sa=710.014e-9 sb=710.014e-9 sa1=275.611e-9 sa2=566.444e-9 sa3=840.809e-9 sa4=675.061e-9 sb1=275.611e-9 sb2=566.444e-9 sb3=840.809e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=237.899e-9 spba=162.738e-9 sapb=283.746e-9 spba1=164.536e-9

** nch_lvt_mac Instance M91 = hspiceD device xm91
xm91 net025 r1b<5> gnd gnd nch_lvt_mac l=40e-9 w=2.48e-6 multi=1 nf=16 sd=140e-9 ad=173.6e-15 as=186e-15 pd=4.72e-6 ps=5.19e-6 nrd=16.797e-3 nrs=16.797e-3 sa=710.014e-9 sb=710.014e-9 sa1=275.611e-9 sa2=566.444e-9 sa3=840.809e-9 sa4=675.061e-9 sb1=275.611e-9 sb2=566.444e-9 sb3=840.809e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=237.899e-9 spba=162.738e-9 sapb=283.746e-9 spba1=164.536e-9

** nch_lvt_mac Instance M96 = hspiceD device xm96
xm96 cbbb1 l<5> net025 gnd nch_lvt_mac l=40e-9 w=620e-9 multi=1 nf=4 sd=140e-9 ad=43.4e-15 as=55.8e-15 pd=1.18e-6 ps=1.65e-6 nrd=66.169e-3 nrs=66.169e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** nch_lvt_mac Instance M90 = hspiceD device xm90
xm90 net023 r1b<4> gnd gnd nch_lvt_mac l=40e-9 w=3.1e-6 multi=1 nf=5 sd=140e-9 ad=241.8e-15 as=241.8e-15 pd=4.5e-6 ps=4.5e-6 nrd=13.288e-3 nrs=13.288e-3 sa=299.94e-9 sb=299.94e-9 sa1=185.996e-9 sa2=282.841e-9 sa3=469.591e-9 sa4=287.96e-9 sb1=185.996e-9 sb2=282.841e-9 sb3=469.591e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=179.215e-9 spba=167.096e-9 sapb=244.603e-9 spba1=168.943e-9

** nch_lvt_mac Instance M132 = hspiceD device xm132
xm132 cbbb1 begin_b gnd gnd nch_lvt_mac l=40e-9 w=120e-9 multi=1 nf=1 sd=140e-9 ad=13.2e-15 as=13.2e-15 pd=460e-9 ps=460e-9 nrd=193.171e-3 nrs=193.171e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M97 = hspiceD device xm97
xm97 cbbb1 l<4> net023 gnd nch_lvt_mac l=40e-9 w=620e-9 multi=1 nf=4 sd=140e-9 ad=43.4e-15 as=55.8e-15 pd=1.18e-6 ps=1.65e-6 nrd=66.169e-3 nrs=66.169e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9
.ends AND8_half_v5
** End of subcircuit definition.

** Library name: NewRipple_SAR_10bit_FF
** Cell name: AND8_half2_v5
** View name: schematic
** terminal mapping: CBBB2	= cbbb2
**                   GND	= gnd
**                   L<3>	= l<3>
**                   L<2>	= l<2>
**                   L<1>	= l<1>
**                   R1B<3>	= r1b<3>
**                   R1B<2>	= r1b<2>
**                   R1B<1>	= r1b<1>
**                   VDD_AND	= vdd_and
.subckt AND8_half2_v5 cbbb2 gnd l<3> l<2> l<1> r1b<3> r1b<2> r1b<1> vdd_and

** pch_lvt_mac Instance M143 = hspiceD device xm143
xm143 cbbb2 r1b<2> net020 vdd_and pch_lvt_mac l=40e-9 w=820e-9 multi=1 nf=4 sd=140e-9 ad=57.4e-15 as=73.8e-15 pd=1.38e-6 ps=1.95e-6 nrd=111.465e-3 nrs=111.465e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_lvt_mac Instance M144 = hspiceD device xm144
xm144 cbbb2 r1b<1> vdd_and vdd_and pch_lvt_mac l=40e-9 w=1.23e-6 multi=1 nf=2 sd=140e-9 ad=86.1e-15 as=135.3e-15 pd=1.51e-6 ps=2.9e-6 nrd=42.796e-3 nrs=42.796e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_lvt_mac Instance M102 = hspiceD device xm102
xm102 cbbb2 l<3> vdd_and vdd_and pch_lvt_mac l=40e-9 w=240e-9 multi=1 nf=2 sd=140e-9 ad=16.8e-15 as=26.4e-15 pd=520e-9 ps=920e-9 nrd=133.606e-3 nrs=133.606e-3 sa=163.182e-9 sb=163.182e-9 sa1=136.944e-9 sa2=161.471e-9 sa3=229.143e-9 sa4=159.724e-9 sb1=136.944e-9 sb2=161.471e-9 sb3=229.143e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=147.401e-9 spba=180.71e-9 sapb=242.494e-9 spba1=182.707e-9

** pch_lvt_mac Instance M146 = hspiceD device xm146
xm146 net020 l<1> vdd_and vdd_and pch_lvt_mac l=40e-9 w=3.28e-6 multi=1 nf=16 sd=140e-9 ad=229.6e-15 as=246e-15 pd=5.52e-6 ps=6.09e-6 nrd=27.388e-3 nrs=27.388e-3 sa=710.014e-9 sb=710.014e-9 sa1=275.611e-9 sa2=566.444e-9 sa3=840.809e-9 sa4=675.061e-9 sb1=275.611e-9 sb2=566.444e-9 sb3=840.809e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=237.899e-9 spba=162.738e-9 sapb=283.746e-9 spba1=164.536e-9

** pch_lvt_mac Instance M142 = hspiceD device xm142
xm142 cbbb2 r1b<3> net022 vdd_and pch_lvt_mac l=40e-9 w=820e-9 multi=1 nf=4 sd=140e-9 ad=57.4e-15 as=73.8e-15 pd=1.38e-6 ps=1.95e-6 nrd=111.465e-3 nrs=111.465e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** pch_lvt_mac Instance M145 = hspiceD device xm145
xm145 net022 l<2> vdd_and vdd_and pch_lvt_mac l=40e-9 w=3.28e-6 multi=1 nf=16 sd=140e-9 ad=229.6e-15 as=246e-15 pd=5.52e-6 ps=6.09e-6 nrd=27.388e-3 nrs=27.388e-3 sa=710.014e-9 sb=710.014e-9 sa1=275.611e-9 sa2=566.444e-9 sa3=840.809e-9 sa4=675.061e-9 sb1=275.611e-9 sb2=566.444e-9 sb3=840.809e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=237.899e-9 spba=162.738e-9 sapb=283.746e-9 spba1=164.536e-9

** nch_lvt_mac Instance M130 = hspiceD device xm130
xm130 cbbb2 l<2> net021 gnd nch_lvt_mac l=40e-9 w=620e-9 multi=1 nf=4 sd=140e-9 ad=43.4e-15 as=55.8e-15 pd=1.18e-6 ps=1.65e-6 nrd=66.169e-3 nrs=66.169e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** nch_lvt_mac Instance M128 = hspiceD device xm128
xm128 net021 r1b<2> gnd gnd nch_lvt_mac l=40e-9 w=2.48e-6 multi=1 nf=16 sd=140e-9 ad=173.6e-15 as=186e-15 pd=4.72e-6 ps=5.19e-6 nrd=16.797e-3 nrs=16.797e-3 sa=710.014e-9 sb=710.014e-9 sa1=275.611e-9 sa2=566.444e-9 sa3=840.809e-9 sa4=675.061e-9 sb1=275.611e-9 sb2=566.444e-9 sb3=840.809e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=237.899e-9 spba=162.738e-9 sapb=283.746e-9 spba1=164.536e-9

** nch_lvt_mac Instance M129 = hspiceD device xm129
xm129 net019 r1b<1> gnd gnd nch_lvt_mac l=40e-9 w=3.1e-6 multi=1 nf=5 sd=140e-9 ad=241.8e-15 as=241.8e-15 pd=4.5e-6 ps=4.5e-6 nrd=13.288e-3 nrs=13.288e-3 sa=299.94e-9 sb=299.94e-9 sa1=185.996e-9 sa2=282.841e-9 sa3=469.591e-9 sa4=287.96e-9 sb1=185.996e-9 sb2=282.841e-9 sb3=469.591e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=179.215e-9 spba=167.096e-9 sapb=244.603e-9 spba1=168.943e-9

** nch_lvt_mac Instance M131 = hspiceD device xm131
xm131 cbbb2 l<1> net019 gnd nch_lvt_mac l=40e-9 w=620e-9 multi=1 nf=4 sd=140e-9 ad=43.4e-15 as=55.8e-15 pd=1.18e-6 ps=1.65e-6 nrd=66.169e-3 nrs=66.169e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** nch_lvt_mac Instance M206 = hspiceD device xm206
xm206 cbbb2 l<3> net023 gnd nch_lvt_mac l=40e-9 w=620e-9 multi=1 nf=4 sd=140e-9 ad=43.4e-15 as=55.8e-15 pd=1.18e-6 ps=1.65e-6 nrd=66.169e-3 nrs=66.169e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9

** nch_lvt_mac Instance M127 = hspiceD device xm127
xm127 net023 r1b<3> gnd gnd nch_lvt_mac l=40e-9 w=2.48e-6 multi=1 nf=16 sd=140e-9 ad=173.6e-15 as=186e-15 pd=4.72e-6 ps=5.19e-6 nrd=16.797e-3 nrs=16.797e-3 sa=710.014e-9 sb=710.014e-9 sa1=275.611e-9 sa2=566.444e-9 sa3=840.809e-9 sa4=675.061e-9 sb1=275.611e-9 sb2=566.444e-9 sb3=840.809e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=237.899e-9 spba=162.738e-9 sapb=283.746e-9 spba1=164.536e-9
.ends AND8_half2_v5
** End of subcircuit definition.

** Library name: pool
** Cell name: NAND_s2
** View name: schematic
** terminal mapping: A1	= a1
**                   A2	= a2
**                   ZN	= zn
**                   VDD	= vdd
**                   VSS	= vss
.subckt NAND_s2 a1 a2 zn vdd vss

** pch_lvt_mac Instance M2 = hspiceD device xm2
xm2 zn a2 vdd vdd pch_lvt_mac l=40e-9 w=3.6e-6 multi=1 nf=30 sd=140e-9 ad=252e-15 as=261.6e-15 pd=7.8e-6 ps=8.2e-6 nrd=8.528e-3 nrs=8.528e-3 sa=1.16234e-6 sb=1.16234e-6 sa1=340.754e-9 sa2=804.502e-9 sa3=1.07731e-6 sa4=1.10446e-6 sb1=340.754e-9 sb2=804.502e-9 sb3=1.07731e-6 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=280.265e-9 spba=161.909e-9 sapb=314.849e-9 spba1=163.698e-9

** pch_lvt_mac Instance M4 = hspiceD device xm4
xm4 zn a1 vdd vdd pch_lvt_mac l=40e-9 w=3.6e-6 multi=1 nf=30 sd=140e-9 ad=252e-15 as=261.6e-15 pd=7.8e-6 ps=8.2e-6 nrd=8.528e-3 nrs=8.528e-3 sa=1.16234e-6 sb=1.16234e-6 sa1=340.754e-9 sa2=804.502e-9 sa3=1.07731e-6 sa4=1.10446e-6 sb1=340.754e-9 sb2=804.502e-9 sb3=1.07731e-6 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=280.265e-9 spba=161.909e-9 sapb=314.849e-9 spba1=163.698e-9

** nch_lvt_mac Instance M0 = hspiceD device xm0
xm0 net16 a2 vss vss nch_lvt_mac l=40e-9 w=3.6e-6 multi=1 nf=30 sd=140e-9 ad=252e-15 as=261.6e-15 pd=7.8e-6 ps=8.2e-6 nrd=6.952e-3 nrs=6.952e-3 sa=1.16234e-6 sb=1.16234e-6 sa1=340.754e-9 sa2=804.502e-9 sa3=1.07731e-6 sa4=1.10446e-6 sb1=340.754e-9 sb2=804.502e-9 sb3=1.07731e-6 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=280.265e-9 spba=161.909e-9 sapb=314.849e-9 spba1=163.698e-9

** nch_lvt_mac Instance M5 = hspiceD device xm5
xm5 zn a1 net16 vss nch_lvt_mac l=40e-9 w=3.6e-6 multi=1 nf=30 sd=140e-9 ad=252e-15 as=261.6e-15 pd=7.8e-6 ps=8.2e-6 nrd=6.952e-3 nrs=6.952e-3 sa=1.16234e-6 sb=1.16234e-6 sa1=340.754e-9 sa2=804.502e-9 sa3=1.07731e-6 sa4=1.10446e-6 sb1=340.754e-9 sb2=804.502e-9 sb3=1.07731e-6 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=280.265e-9 spba=161.909e-9 sapb=314.849e-9 spba1=163.698e-9
.ends NAND_s2
** End of subcircuit definition.

** Library name: pool
** Cell name: INVD12BWP
** View name: schematic
** terminal mapping: I	= i
**                   ZN	= zn
**                   VDD	= vdd
**                   VSS	= vss
.subckt INVD12BWP i zn vdd vss

** pch_lvt_mac Instance M6 = hspiceD device xm6
xm6 zn i vdd vdd pch_lvt_mac l=40e-9 w=4.92e-6 multi=1 nf=1 sd=140e-9 ad=541.2e-15 as=541.2e-15 pd=10.06e-6 ps=10.06e-6 nrd=9.391e-3 nrs=9.391e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** nch_lvt_mac Instance M5 = hspiceD device xm5
xm5 zn i vss vss nch_lvt_mac l=40e-9 w=3.72e-6 multi=1 nf=1 sd=140e-9 ad=409.2e-15 as=409.2e-15 pd=7.66e-6 ps=7.66e-6 nrd=8.858e-3 nrs=8.858e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9
.ends INVD12BWP
** End of subcircuit definition.

** Library name: NewRipple_SAR_10bit_FF
** Cell name: COMPARATOR_PRE_AMP
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
**                   VI+	= _net0
**                   VI-	= _net1
.subckt COMPARATOR_PRE_AMP clk crossn crossp gnd intern interp outm outp vdd _net0 _net1

** nch_lvt_mac Instance M0 = hspiceD device xm0
xm0 gnd intern gnd gnd nch_lvt_mac l=1e-6 w=1.05e-6 multi=1 nf=1 sd=140e-9 ad=115.5e-15 as=115.5e-15 pd=2.32e-6 ps=2.32e-6 nrd=34.495e-3 nrs=34.495e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.76068e-6 sapb=577.831e-9 spba1=1.84662e-6

** nch_lvt_mac Instance M22 = hspiceD device xm22
xm22 gnd interp gnd gnd nch_lvt_mac l=1e-6 w=1.05e-6 multi=1 nf=1 sd=140e-9 ad=115.5e-15 as=115.5e-15 pd=2.32e-6 ps=2.32e-6 nrd=34.495e-3 nrs=34.495e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.76068e-6 sapb=577.831e-9 spba1=1.84662e-6

** nch_lvt_mac Instance M16 = hspiceD device xm16
xm16 outm crossp gnd gnd nch_lvt_mac l=40e-9 w=1.44e-6 multi=1 nf=12 sd=140e-9 ad=100.8e-15 as=110.4e-15 pd=3.12e-6 ps=3.52e-6 nrd=17.31e-3 nrs=17.31e-3 sa=569.822e-9 sb=569.822e-9 sa1=250.073e-9 sa2=479.667e-9 sa3=742.764e-9 sa4=542.403e-9 sb1=250.073e-9 sb2=479.667e-9 sb3=742.764e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=221.196e-9 spba=163.348e-9 sapb=271.711e-9 spba1=165.153e-9

** nch_lvt_mac Instance M17 = hspiceD device xm17
xm17 outp crossn gnd gnd nch_lvt_mac l=40e-9 w=1.44e-6 multi=1 nf=12 sd=140e-9 ad=100.8e-15 as=110.4e-15 pd=3.12e-6 ps=3.52e-6 nrd=17.31e-3 nrs=17.31e-3 sa=569.822e-9 sb=569.822e-9 sa1=250.073e-9 sa2=479.667e-9 sa3=742.764e-9 sa4=542.403e-9 sb1=250.073e-9 sb2=479.667e-9 sb3=742.764e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=221.196e-9 spba=163.348e-9 sapb=271.711e-9 spba1=165.153e-9

** nch_lvt_mac Instance M4 = hspiceD device xm4
xm4 crossn crossp intern gnd nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=16 sd=140e-9 ad=134.4e-15 as=144e-15 pd=4.16e-6 ps=4.56e-6 nrd=13.004e-3 nrs=13.004e-3 sa=710.014e-9 sb=710.014e-9 sa1=275.611e-9 sa2=566.444e-9 sa3=840.809e-9 sa4=675.061e-9 sb1=275.611e-9 sb2=566.444e-9 sb3=840.809e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=237.899e-9 spba=162.738e-9 sapb=283.746e-9 spba1=164.536e-9

** nch_lvt_mac Instance M3 = hspiceD device xm3
xm3 crossp crossn interp gnd nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=16 sd=140e-9 ad=134.4e-15 as=144e-15 pd=4.16e-6 ps=4.56e-6 nrd=13.004e-3 nrs=13.004e-3 sa=710.014e-9 sb=710.014e-9 sa1=275.611e-9 sa2=566.444e-9 sa3=840.809e-9 sa4=675.061e-9 sb1=275.611e-9 sb2=566.444e-9 sb3=840.809e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=237.899e-9 spba=162.738e-9 sapb=283.746e-9 spba1=164.536e-9

** nch_lvt_mac Instance M7 = hspiceD device xm7
xm7 net050 clk gnd gnd nch_lvt_mac l=40e-9 w=8.64e-6 multi=1 nf=72 sd=140e-9 ad=604.8e-15 as=614.4e-15 pd=18.72e-6 ps=19.12e-6 nrd=2.901e-3 nrs=2.901e-3 sa=2.36308e-6 sb=2.36308e-6 sa1=457.563e-9 sa2=1.28354e-6 sa3=1.47901e-6 sa4=2.24986e-6 sb1=457.563e-9 sb2=1.28354e-6 sb3=1.47901e-6 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=355.22e-9 spba=161.373e-9 sapb=369.335e-9 spba1=163.156e-9

** nch_lvt_mac Instance M5 = hspiceD device xm5
xm5 intern _net0 net050 gnd nch_lvt_mac l=40e-9 w=9.6e-6 multi=1 nf=10 sd=140e-9 ad=672e-15 as=748.8e-15 pd=11e-6 ps=13.08e-6 nrd=3.387e-3 nrs=3.387e-3 sa=496.714e-9 sb=496.714e-9 sa1=235.119e-9 sa2=430.824e-9 sa3=683.135e-9 sa4=473.338e-9 sb1=235.119e-9 sb2=430.824e-9 sb3=683.135e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=211.4e-9 spba=163.849e-9 sapb=264.826e-9 spba1=165.659e-9

** nch_lvt_mac Instance M6 = hspiceD device xm6
xm6 interp _net1 net050 gnd nch_lvt_mac l=40e-9 w=9.6e-6 multi=1 nf=10 sd=140e-9 ad=672e-15 as=748.8e-15 pd=11e-6 ps=13.08e-6 nrd=3.387e-3 nrs=3.387e-3 sa=496.714e-9 sb=496.714e-9 sa1=235.119e-9 sa2=430.824e-9 sa3=683.135e-9 sa4=473.338e-9 sb1=235.119e-9 sb2=430.824e-9 sb3=683.135e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=211.4e-9 spba=163.849e-9 sapb=264.826e-9 spba1=165.659e-9

** pch_lvt_mac Instance M8 = hspiceD device xm8
xm8 outm crossp vdd vdd pch_lvt_mac l=40e-9 w=2.88e-6 multi=1 nf=6 sd=140e-9 ad=201.6e-15 as=240e-15 pd=3.72e-6 ps=4.84e-6 nrd=19.184e-3 nrs=19.184e-3 sa=341.472e-9 sb=341.472e-9 sa1=197.813e-9 sa2=316.439e-9 sa3=523.981e-9 sa4=327.012e-9 sb1=197.813e-9 sb2=316.439e-9 sb3=523.981e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=186.948e-9 spba=165.964e-9 sapb=248.903e-9 spba1=167.797e-9

** pch_lvt_mac Instance M18 = hspiceD device xm18
xm18 intern clk vdd vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=1 sd=140e-9 ad=211.2e-15 as=211.2e-15 pd=4.06e-6 ps=4.06e-6 nrd=26.565e-3 nrs=26.565e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M15 = hspiceD device xm15
xm15 outp crossn vdd vdd pch_lvt_mac l=40e-9 w=2.88e-6 multi=1 nf=6 sd=140e-9 ad=201.6e-15 as=240e-15 pd=3.72e-6 ps=4.84e-6 nrd=19.184e-3 nrs=19.184e-3 sa=341.472e-9 sb=341.472e-9 sa1=197.813e-9 sa2=316.439e-9 sa3=523.981e-9 sa4=327.012e-9 sb1=197.813e-9 sb2=316.439e-9 sb3=523.981e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=186.948e-9 spba=165.964e-9 sapb=248.903e-9 spba1=167.797e-9

** pch_lvt_mac Instance M19 = hspiceD device xm19
xm19 interp clk vdd vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=1 sd=140e-9 ad=211.2e-15 as=211.2e-15 pd=4.06e-6 ps=4.06e-6 nrd=26.565e-3 nrs=26.565e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M10 = hspiceD device xm10
xm10 crossn clk vdd vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=1 sd=140e-9 ad=211.2e-15 as=211.2e-15 pd=4.06e-6 ps=4.06e-6 nrd=26.565e-3 nrs=26.565e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M12 = hspiceD device xm12
xm12 crossp clk vdd vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=1 sd=140e-9 ad=211.2e-15 as=211.2e-15 pd=4.06e-6 ps=4.06e-6 nrd=26.565e-3 nrs=26.565e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=130.305e-9 spba=745.547e-9 sapb=1.59028e-6 spba1=745.933e-9

** pch_lvt_mac Instance M14 = hspiceD device xm14
xm14 crossn crossp vdd vdd pch_lvt_mac l=40e-9 w=3.84e-6 multi=1 nf=32 sd=140e-9 ad=268.8e-15 as=278.4e-15 pd=8.32e-6 ps=8.72e-6 nrd=7.993e-3 nrs=7.993e-3 sa=1.22372e-6 sb=1.22372e-6 sa1=348.249e-9 sa2=833.303e-9 sa3=1.10371e-6 sa4=1.16284e-6 sb1=348.249e-9 sb2=833.303e-9 sb3=1.10371e-6 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=285.114e-9 spba=161.851e-9 sapb=318.414e-9 spba1=163.639e-9

** pch_lvt_mac Instance M13 = hspiceD device xm13
xm13 crossp crossn vdd vdd pch_lvt_mac l=40e-9 w=3.84e-6 multi=1 nf=32 sd=140e-9 ad=268.8e-15 as=278.4e-15 pd=8.32e-6 ps=8.72e-6 nrd=7.993e-3 nrs=7.993e-3 sa=1.22372e-6 sb=1.22372e-6 sa1=348.249e-9 sa2=833.303e-9 sa3=1.10371e-6 sa4=1.16284e-6 sb1=348.249e-9 sb2=833.303e-9 sb3=1.10371e-6 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=285.114e-9 spba=161.851e-9 sapb=318.414e-9 spba1=163.639e-9
.ends COMPARATOR_PRE_AMP
** End of subcircuit definition.

** Library name: NewRipple_SAR_10bit_FF
** Cell name: AND_PREAMP_v5
** View name: schematic
.topckt AND_PREAMP_v5 begin_b cbbb1 cbbb2 crossn crossp fire_pre_amp gnd inn inp intern interp l<6> l<5> l<4> l<3> l<2> l<1> r1b<6> r1b<5> r1b<4> r1b<3> r1b<2> r1b<1> rn rp vdd_and vdd_c
** terminal mapping: BEGIN_B	= begin_b
**                   CBBB1	= cbbb1
**                   CBBB2	= cbbb2
**                   CROSSN	= crossn
**                   CROSSP	= crossp
**                   FIRE_PRE_AMP	= fire_pre_amp
**                   GND	= gnd
**                   INN	= inn
**                   INP	= inp
**                   INTERN	= intern
**                   INTERP	= interp
**                   L<6>	= l<6>
**                   L<5>	= l<5>
**                   L<4>	= l<4>
**                   L<3>	= l<3>
**                   L<2>	= l<2>
**                   L<1>	= l<1>
**                   R1B<6>	= r1b<6>
**                   R1B<5>	= r1b<5>
**                   R1B<4>	= r1b<4>
**                   R1B<3>	= r1b<3>
**                   R1B<2>	= r1b<2>
**                   R1B<1>	= r1b<1>
**                   RN	= rn
**                   RP	= rp
**                   VDD_AND	= vdd_and
**                   VDD_C	= vdd_c

** AND8_half_v5 Instance I144 = hspiceD device xi144
** Instance of Lib: NewRipple_SAR_10bit_FF,  Cell: AND8_half_v5, View: schematic
xi144 begin_b cbbb1 gnd l<6> l<5> l<4> r1b<6> r1b<5> r1b<4> vdd_and AND8_half_v5

** AND8_half2_v5 Instance I145 = hspiceD device xi145
** Instance of Lib: NewRipple_SAR_10bit_FF,  Cell: AND8_half2_v5, View: schematic
xi145 cbbb2 gnd l<3> l<2> l<1> r1b<3> r1b<2> r1b<1> vdd_and AND8_half2_v5

** NAND_s2 Instance I83 = hspiceD device xi83
** Instance of Lib: pool,  Cell: NAND_s2, View: schematic
xi83 cbbb1 cbbb2 net26 vdd_and gnd NAND_s2

** INVD12BWP Instance I82 = hspiceD device xi82
** Instance of Lib: pool,  Cell: INVD12BWP, View: schematic
xi82 net26 fire_pre_amp vdd_and gnd INVD12BWP

** COMPARATOR_PRE_AMP Instance I127 = hspiceD device xi127
** Instance of Lib: NewRipple_SAR_10bit_FF,  Cell: COMPARATOR_PRE_AMP, View: schematic
xi127 fire_pre_amp crossn crossp gnd intern interp rn rp vdd_c inp inn COMPARATOR_PRE_AMP
.ends AND_PREAMP_v5
** End of subcircuit definition.
