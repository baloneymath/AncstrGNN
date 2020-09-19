** Generated for: hspiceD
** Generated on: Feb 23 19:00:15 2019
** Design library name: CONST_EXTR
** Design cell name: COMPARATOR_PRE_AMP
** Design view name: schematic


** .TEMP 25.0
** .OPTION
** +    ARTIST=2
** +    INGOLD=2
** +    PARHIER=LOCAL
** +    PSF=2
** .LIB "/usr/local/packages/tsmc_40/pdk/models/hspice/toplevel.l" top_tt

** Library name: CONST_EXTR
** Cell name: COMPARATOR_PRE_AMP
** View name: schematic
.topckt COMPARATOR_PRE_AMP clk crossn crossp gnd intern interp outm outp vdd _net0 _net1
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
