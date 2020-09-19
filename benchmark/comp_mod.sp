** Generated for: hspiceD
** Generated on: Mar 18 20:13:14 2019
** Design library name: Playground
** Design cell name: myComparator_v3
** Design view name: schematic


**.TEMP 25.0
**.OPTION
**+    ARTIST=2
**+    INGOLD=2
**+    PARHIER=LOCAL
**+    PSF=2
**.LIB "/usr/local/packages/tsmc_40/pdk/models/hspice/toplevel.l" top_tt

** Library name: Playground
** Cell name: myComparator_v3
** View name: schematic
.topckt myComparator_v3 clk gnd outm outp vdd _net0 _net1
xm16 outm crossp gnd gnd nch_lvt_mac l=40e-9 w=1.44e-6 multi=1 nf=4 sd=140e-9 ad=100.8e-15 as=129.6e-15 pd=2e-6 ps=2.88e-6 nrd=38.421e-3 nrs=38.421e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9
xm17 outp crossn gnd gnd nch_lvt_mac l=40e-9 w=1.44e-6 multi=1 nf=4 sd=140e-9 ad=100.8e-15 as=129.6e-15 pd=2e-6 ps=2.88e-6 nrd=38.421e-3 nrs=38.421e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9
xm4 crossn crossp intern gnd nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=22.768e-3 nrs=22.768e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9
xm3 crossp crossn interp gnd nch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=22.768e-3 nrs=22.768e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9
xm7 net069 clk gnd gnd nch_lvt_mac l=40e-9 w=6.9e-6 multi=1 nf=15 sd=140e-9 ad=501.4e-15 as=501.4e-15 pd=9.54e-6 ps=9.54e-6 nrd=5.906e-3 nrs=5.906e-3 sa=675.603e-9 sb=675.603e-9 sa1=269.666e-9 sa2=545.885e-9 sa3=818.344e-9 sa4=642.475e-9 sb1=269.666e-9 sb2=545.885e-9 sb3=818.344e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=234.015e-9 spba=162.859e-9 sapb=280.924e-9 spba1=164.658e-9
xm5 intern _net0 net069 gnd nch_lvt_mac l=40e-9 w=14.4e-6 multi=1 nf=15 sd=140e-9 ad=1.0464e-12 as=1.0464e-12 pd=17.54e-6 ps=17.54e-6 nrd=2.264e-3 nrs=2.264e-3 sa=675.603e-9 sb=675.603e-9 sa1=269.666e-9 sa2=545.885e-9 sa3=818.344e-9 sa4=642.475e-9 sb1=269.666e-9 sb2=545.885e-9 sb3=818.344e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=234.015e-9 spba=162.859e-9 sapb=280.924e-9 spba1=164.658e-9
xm6 interp _net1 net069 gnd nch_lvt_mac l=40e-9 w=14.4e-6 multi=1 nf=15 sd=140e-9 ad=1.0464e-12 as=1.0464e-12 pd=17.54e-6 ps=17.54e-6 nrd=2.264e-3 nrs=2.264e-3 sa=675.603e-9 sb=675.603e-9 sa1=269.666e-9 sa2=545.885e-9 sa3=818.344e-9 sa4=642.475e-9 sb1=269.666e-9 sb2=545.885e-9 sb3=818.344e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=234.015e-9 spba=162.859e-9 sapb=280.924e-9 spba1=164.658e-9
xm8 outm crossp vdd vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=28.999e-3 nrs=28.999e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9
xm18 intern clk vdd vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=28.999e-3 nrs=28.999e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9
xm15 outp crossn vdd vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=28.999e-3 nrs=28.999e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9
xm2 interp clk vdd vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=28.999e-3 nrs=28.999e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9
xm1 crossn clk vdd vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=28.999e-3 nrs=28.999e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9
xm12 crossp clk vdd vdd pch_lvt_mac l=40e-9 w=1.92e-6 multi=1 nf=4 sd=140e-9 ad=134.4e-15 as=172.8e-15 pd=2.48e-6 ps=3.6e-6 nrd=28.999e-3 nrs=28.999e-3 sa=256.788e-9 sb=256.788e-9 sa1=172.516e-9 sa2=246.369e-9 sa3=404.983e-9 sa4=247.435e-9 sb1=172.516e-9 sb2=246.369e-9 sb3=404.983e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=170.416e-9 spba=168.903e-9 sapb=240.571e-9 spba1=170.77e-9
xm14 crossn crossp vdd vdd pch_lvt_mac l=40e-9 w=3.84e-6 multi=1 nf=8 sd=140e-9 ad=268.8e-15 as=307.2e-15 pd=4.96e-6 ps=6.08e-6 nrd=14.333e-3 nrs=14.333e-3 sa=420.901e-9 sb=420.901e-9 sa1=218.025e-9 sa2=376.982e-9 sa3=612.324e-9 sa4=401.816e-9 sb1=218.025e-9 sb2=376.982e-9 sb3=612.324e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=200.193e-9 spba=164.62e-9 sapb=257.228e-9 spba1=166.439e-9
xm13 crossp crossn vdd vdd pch_lvt_mac l=40e-9 w=3.84e-6 multi=1 nf=8 sd=140e-9 ad=268.8e-15 as=307.2e-15 pd=4.96e-6 ps=6.08e-6 nrd=14.333e-3 nrs=14.333e-3 sa=420.901e-9 sb=420.901e-9 sa1=218.025e-9 sa2=376.982e-9 sa3=612.324e-9 sa4=401.816e-9 sb1=218.025e-9 sb2=376.982e-9 sb3=612.324e-9 spa=140e-9 spa1=140e-9 spa2=140e-9 spa3=140e-9 sap=200.193e-9 spba=164.62e-9 sapb=257.228e-9 spba1=166.439e-9
.ends myComparator_v3
** End of subcircuit definition.
