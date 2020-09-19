** Generated for: hspiceD
** Generated on: Mar  5 11:12:06 2019
** Design library name: CTDSM_DEC2016
** Design cell name: Gm1_v5_Practice
** Design view name: schematic


** .TEMP 25.0
** .OPTION
** +    ARTIST=2
** +    INGOLD=2
** +    PARHIER=LOCAL
** +    PSF=2
** .LIB "/usr/local/packages/tsmc_40/pdk/models/hspice/toplevel.l" top_tt

** Library name: CTDSM_DEC2016
** Cell name: Gm1_v5_Practice
** View name: schematic
.topckt Gm1_v5_Practice ibias vdd vim vip vom vop vss
** terminal mapping: IBIAS	= ibias
**                   VDD	= vdd
**                   VIM	= vim
**                   VIP	= vip
**                   VOM	= vom
**                   VOP	= vop
**                   VSS	= vss

** nch_hvt_mac Instance M8 = hspiceD device xm8
xm8 net074 ntail1 vss vss nch_hvt_mac l=120e-9 w=3.22e-6 multi=1 nf=4 sd=140e-9 ad=225.4e-15 as=289.8e-15 pd=3.78e-6 ps=5.55e-6 nrd=13.746e-3 nrs=13.746e-3 sa=313.488e-9 sb=313.488e-9 sa1=179.031e-9 sa2=290.688e-9 sa3=485.728e-9 sa4=276.641e-9 sb1=179.031e-9 sb2=290.688e-9 sb3=485.728e-9 spa=269.255e-9 spa1=211.397e-9 spa2=155.295e-9 spa3=170.776e-9 sap=244.923e-9 spba=223.131e-9 sapb=396.954e-9 spba1=228.22e-9

** pch_lvt_mac Instance M2 = hspiceD device xm2
xm2 vdd ibias vdd vdd pch_lvt_mac l=3.3e-6 w=2.95e-6 multi=1 nf=1 sd=140e-9 ad=324.5e-15 as=324.5e-15 pd=6.12e-6 ps=6.12e-6 nrd=15.641e-3 nrs=15.641e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.82483e-6 sapb=577.831e-9 spba1=2.1045e-6

** pch_lvt_mac Instance M4 = hspiceD device xm4
xm4 vdd ibias vdd vdd pch_lvt_mac l=3.3e-6 w=2.95e-6 multi=1 nf=1 sd=140e-9 ad=324.5e-15 as=324.5e-15 pd=6.12e-6 ps=6.12e-6 nrd=15.641e-3 nrs=15.641e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.82483e-6 sapb=577.831e-9 spba1=2.1045e-6

** pch_lvt_mac Instance M12 = hspiceD device xm12
xm12 ibias ibias vdd vdd pch_lvt_mac l=120e-9 w=585e-9 multi=1 nf=1 sd=140e-9 ad=64.35e-15 as=64.35e-15 pd=1.39e-6 ps=1.39e-6 nrd=85.492e-3 nrs=85.492e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73551e-6 sapb=577.831e-9 spba1=1.74589e-6

** pch_lvt_mac Instance M11 = hspiceD device xm11
xm11 vom ibias vdd vdd pch_lvt_mac l=120e-9 w=2.34e-6 multi=1 nf=4 sd=140e-9 ad=163.8e-15 as=210.6e-15 pd=2.9e-6 ps=4.23e-6 nrd=19.88e-3 nrs=19.88e-3 sa=313.488e-9 sb=313.488e-9 sa1=179.031e-9 sa2=290.688e-9 sa3=485.728e-9 sa4=276.641e-9 sb1=179.031e-9 sb2=290.688e-9 sb3=485.728e-9 spa=269.255e-9 spa1=211.397e-9 spa2=155.295e-9 spa3=170.776e-9 sap=244.923e-9 spba=223.131e-9 sapb=396.954e-9 spba1=228.22e-9

** pch_lvt_mac Instance M15 = hspiceD device xm15
xm15 ibias ibias vdd vdd pch_lvt_mac l=120e-9 w=585e-9 multi=1 nf=1 sd=140e-9 ad=64.35e-15 as=64.35e-15 pd=1.39e-6 ps=1.39e-6 nrd=85.492e-3 nrs=85.492e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.73551e-6 sapb=577.831e-9 spba1=1.74589e-6

** pch_lvt_mac Instance M14 = hspiceD device xm14
xm14 vop ibias vdd vdd pch_lvt_mac l=120e-9 w=2.34e-6 multi=1 nf=4 sd=140e-9 ad=163.8e-15 as=210.6e-15 pd=2.9e-6 ps=4.23e-6 nrd=19.88e-3 nrs=19.88e-3 sa=313.488e-9 sb=313.488e-9 sa1=179.031e-9 sa2=290.688e-9 sa3=485.728e-9 sa4=276.641e-9 sb1=179.031e-9 sb2=290.688e-9 sb3=485.728e-9 spa=269.255e-9 spa1=211.397e-9 spa2=155.295e-9 spa3=170.776e-9 sap=244.923e-9 spba=223.131e-9 sapb=396.954e-9 spba1=228.22e-9

** nch_lvt_dnw_mac Instance M26 = hspiceD device xm26
xm26 vop vim net074 net074 nch_lvt_mac l=120e-9 w=1.7e-6 multi=1 nf=4 sd=160e-9 ad=136e-15 as=161.5e-15 pd=2.34e-6 ps=3.31e-6 nrd=17.837e-3 nrs=17.837e-3 sa=322.243e-9 sb=322.243e-9 sa1=179.411e-9 sa2=296.65e-9 sa3=502.879e-9 sa4=282.611e-9 sb1=179.411e-9 sb2=296.65e-9 sb3=502.879e-9 spa=293.52e-9 spa1=234.251e-9 spa2=177.307e-9 spa3=193.816e-9 sap=272.622e-9 spba=246.314e-9 sapb=424.261e-9 spba1=251.535e-9

** nch_lvt_dnw_mac Instance M27 = hspiceD device xm27
xm27 vom vip net074 net074 nch_lvt_mac l=120e-9 w=1.7e-6 multi=1 nf=4 sd=160e-9 ad=136e-15 as=161.5e-15 pd=2.34e-6 ps=3.31e-6 nrd=17.837e-3 nrs=17.837e-3 sa=322.243e-9 sb=322.243e-9 sa1=179.411e-9 sa2=296.65e-9 sa3=502.879e-9 sa4=282.611e-9 sb1=179.411e-9 sb2=296.65e-9 sb3=502.879e-9 spa=293.52e-9 spa1=234.251e-9 spa2=177.307e-9 spa3=193.816e-9 sap=272.622e-9 spba=246.314e-9 sapb=424.261e-9 spba1=251.535e-9

** crtmom Instance C21 = hspiceD device xc21
xc21 ntail1 vom vss crtmom nv=16 nh=16 w=70e-9 s=70e-9 stm=1 spm=6 multi=1 ftip=140e-9 dmflag=0

** crtmom Instance C22 = hspiceD device xc22
xc22 vop ntail1 vss crtmom nv=16 nh=16 w=70e-9 s=70e-9 stm=1 spm=6 multi=1 ftip=140e-9 dmflag=0
**Series configuration of R12
xr12  ntail1 vop vss  rppolywo_m lr=6.6e-6 wr=400e-9 multi=1 m=1
**End of R12

**Series configuration of R11
xr11  vom ntail1 vss  rppolywo_m lr=6.6e-6 wr=400e-9 multi=1 m=1
**End of R11


** nch_lvt_mac Instance M3 = hspiceD device xm3
xm3 vss ntail1 vss vss nch_lvt_mac l=2.2e-6 w=2.5e-6 multi=1 nf=1 sd=140e-9 ad=275e-15 as=275e-15 pd=5.22e-6 ps=5.22e-6 nrd=12.421e-3 nrs=12.421e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.79444e-6 sapb=577.831e-9 spba1=1.98202e-6

** nch_lvt_mac Instance M0 = hspiceD device xm0
xm0 vss ntail1 vss vss nch_lvt_mac l=2.2e-6 w=2.5e-6 multi=1 nf=1 sd=140e-9 ad=275e-15 as=275e-15 pd=5.22e-6 ps=5.22e-6 nrd=12.421e-3 nrs=12.421e-3 sa=110e-9 sb=110e-9 sa1=110e-9 sa2=110e-9 sa3=110e-9 sa4=110e-9 sb1=110e-9 sb2=110e-9 sb3=110e-9 spa=3e-6 spa1=3e-6 spa2=3e-6 spa3=3e-6 sap=1.00025e-6 spba=1.79444e-6 sapb=577.831e-9 spba1=1.98202e-6

** pwdnw Instance D0 = hspiceD device d0
d0 net074 vdd pwdnw area=8.3058e-12 pj=11.98e-6 m=1

** dnwpsub Instance D1 = hspiceD device d1
d1 vss vdd dnwpsub area=13.89e-12 pj=15.26e-6 m=1
.ends Gm1_v5_Practice
** End of subcircuit definition.
