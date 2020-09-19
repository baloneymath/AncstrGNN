** Generated for: hspiceD
** Generated on: Feb 23 19:16:06 2019
** Design library name: CONST_EXTR
** Design cell name: OTA_FF_2s_v3e
** Design view name: schematic


** .TEMP 25.0
** .OPTION
** +    ARTIST=2
** +    INGOLD=2
** +    PARHIER=LOCAL
** +    PSF=2
** .LIB "/usr/local/packages/tsmc_40/pdk/models/hspice/toplevel.l" top_tt

** Library name: CONST_EXTR
** Cell name: OTA_FF_2s_v3e
** View name: schematic
.topckt OTA_FF_2s_v3e avdd avss ibin in ip on op vcas vcmi
** terminal mapping: AVDD	= avdd
**                   AVSS	= avss
**                   IBIN	= ibin
**                   IN	= in
**                   IP	= ip
**                   ON	= on
**                   OP	= op
**                   VCAS	= vcas
**                   VCMI	= vcmi

** pch_lvt Instance M35 = hspiceD device m35
m35 net057 ibin avdd avdd pch_lvt l=120e-9 w=10e-6 m=1 nf=2 sd=140e-9 ad=700e-15 as=1.1e-12 pd=10.28e-6 ps=20.44e-6 nrd=4.544e-3 nrs=4.544e-3 sa=183.667e-9 sb=183.667e-9

** pch_lvt Instance M34 = hspiceD device m34
m34 cmfb vcmo net057 net057 pch_lvt l=120e-9 w=5e-6 m=1 nf=1 sd=140e-9 ad=550e-15 as=550e-15 pd=10.22e-6 ps=10.22e-6 nrd=9.544e-3 nrs=9.544e-3 sa=110e-9 sb=110e-9

** pch_lvt Instance M33 = hspiceD device m33
m33 net044 vcmi net057 net057 pch_lvt l=120e-9 w=5e-6 m=1 nf=1 sd=140e-9 ad=550e-15 as=550e-15 pd=10.22e-6 ps=10.22e-6 nrd=9.544e-3 nrs=9.544e-3 sa=110e-9 sb=110e-9

** pch_lvt Instance M62 = hspiceD device m62
m62 avdd ibin avdd avdd pch_lvt l=120e-9 w=52.5e-6 m=1 nf=21 sd=140e-9 ad=3.775e-12 as=3.775e-12 pd=58.02e-6 ps=58.02e-6 nrd=784e-6 nrs=784e-6 sa=1.17808e-6 sb=1.17808e-6

** pch_lvt Instance M54 = hspiceD device m54
m54 net59 net59 net59 net59 pch_lvt l=120e-9 w=30e-6 m=1 nf=12 sd=140e-9 ad=2.1e-12 as=2.3e-12 pd=31.68e-6 ps=36.84e-6 nrd=1.377e-3 nrs=1.377e-3 sa=749.116e-9 sb=749.116e-9

** pch_lvt Instance M43 = hspiceD device m43
m43 net5 net5 net5 net5 pch_lvt l=120e-9 w=15e-6 m=1 nf=6 sd=140e-9 ad=1.05e-12 as=1.25e-12 pd=15.84e-6 ps=21e-6 nrd=2.775e-3 nrs=2.775e-3 sa=431.137e-9 sb=431.137e-9

** pch_lvt Instance M53 = hspiceD device m53
m53 avdd ibin avdd avdd pch_lvt l=120e-9 w=15e-6 m=1 nf=6 sd=140e-9 ad=1.05e-12 as=1.25e-12 pd=15.84e-6 ps=21e-6 nrd=2.775e-3 nrs=2.775e-3 sa=431.137e-9 sb=431.137e-9

** pch_lvt Instance M57 = hspiceD device m57
m57 avdd ibin avdd avdd pch_lvt l=120e-9 w=10e-6 m=1 nf=4 sd=140e-9 ad=700e-15 as=900e-15 pd=10.56e-6 ps=15.72e-6 nrd=4.195e-3 nrs=4.195e-3 sa=313.488e-9 sb=313.488e-9

** pch_lvt Instance M37 = hspiceD device m37
m37 op in net59 net59 pch_lvt l=120e-9 w=60e-6 m=1 nf=12 sd=140e-9 ad=4.2e-12 as=4.6e-12 pd=61.68e-6 ps=71.84e-6 nrd=728e-6 nrs=728e-6 sa=749.116e-9 sb=749.116e-9

** pch_lvt Instance M23 = hspiceD device m23
m23 on ip net59 net59 pch_lvt l=120e-9 w=60e-6 m=1 nf=12 sd=140e-9 ad=4.2e-12 as=4.6e-12 pd=61.68e-6 ps=71.84e-6 nrd=728e-6 nrs=728e-6 sa=749.116e-9 sb=749.116e-9

** pch_lvt Instance M63 = hspiceD device m63
m63 net75 vcas net75 net75 pch_lvt l=120e-9 w=20e-6 m=1 nf=8 sd=140e-9 ad=1.4e-12 as=1.6e-12 pd=21.12e-6 ps=26.28e-6 nrd=2.074e-3 nrs=2.074e-3 sa=541.635e-9 sb=541.635e-9

** pch_lvt Instance M58 = hspiceD device m58
m58 net057 vcmo net057 net057 pch_lvt l=120e-9 w=5e-6 m=1 nf=2 sd=140e-9 ad=350e-15 as=550e-15 pd=5.28e-6 ps=10.44e-6 nrd=8.591e-3 nrs=8.591e-3 sa=183.667e-9 sb=183.667e-9

** pch_lvt Instance M36 = hspiceD device m36
m36 net59 ibin avdd avdd pch_lvt l=120e-9 w=120e-6 m=1 nf=24 sd=140e-9 ad=8.4e-12 as=8.8e-12 pd=123.36e-6 ps=133.52e-6 nrd=363e-6 nrs=363e-6 sa=1.31365e-6 sb=1.31365e-6

** pch_lvt Instance M41 = hspiceD device m41
m41 avdd ibin avdd avdd pch_lvt l=120e-9 w=7.5e-6 m=1 nf=3 sd=140e-9 ad=625e-15 as=625e-15 pd=10.5e-6 ps=10.5e-6 nrd=5.638e-3 nrs=5.638e-3 sa=250.649e-9 sb=250.649e-9

** pch_lvt Instance M16 = hspiceD device m16
m16 ibin vcas net75 net75 pch_lvt l=120e-9 w=10e-6 m=1 nf=2 sd=140e-9 ad=700e-15 as=1.1e-12 pd=10.28e-6 ps=20.44e-6 nrd=4.544e-3 nrs=4.544e-3 sa=183.667e-9 sb=183.667e-9

** pch_lvt Instance M50 = hspiceD device m50
m50 on1 ip net5 net5 pch_lvt l=120e-9 w=5e-6 m=1 nf=1 sd=140e-9 ad=550e-15 as=550e-15 pd=10.22e-6 ps=10.22e-6 nrd=9.544e-3 nrs=9.544e-3 sa=110e-9 sb=110e-9

** pch_lvt Instance M48 = hspiceD device m48
m48 net057 vcmi net057 net057 pch_lvt l=120e-9 w=15e-6 m=1 nf=6 sd=140e-9 ad=1.05e-12 as=1.25e-12 pd=15.84e-6 ps=21e-6 nrd=2.775e-3 nrs=2.775e-3 sa=431.137e-9 sb=431.137e-9

** pch_lvt Instance M6 = hspiceD device m6
m6 net75 ibin avdd avdd pch_lvt l=120e-9 w=10e-6 m=1 nf=2 sd=140e-9 ad=700e-15 as=1.1e-12 pd=10.28e-6 ps=20.44e-6 nrd=4.544e-3 nrs=4.544e-3 sa=183.667e-9 sb=183.667e-9

** pch_lvt Instance M4 = hspiceD device m4
m4 net5 ibin avdd avdd pch_lvt l=120e-9 w=10e-6 m=1 nf=2 sd=140e-9 ad=700e-15 as=1.1e-12 pd=10.28e-6 ps=20.44e-6 nrd=4.544e-3 nrs=4.544e-3 sa=183.667e-9 sb=183.667e-9

** pch_lvt Instance M20 = hspiceD device m20
m20 op1 in net5 net5 pch_lvt l=120e-9 w=5e-6 m=1 nf=1 sd=140e-9 ad=550e-15 as=550e-15 pd=10.22e-6 ps=10.22e-6 nrd=9.544e-3 nrs=9.544e-3 sa=110e-9 sb=110e-9

** nch_lvt Instance M7 = hspiceD device m7
m7 avss op1 avss avss nch_lvt l=500e-9 w=4e-6 m=1 nf=4 sd=160e-9 ad=320e-15 as=380e-15 pd=4.64e-6 ps=6.76e-6 nrd=7.709e-3 nrs=7.709e-3 sa=586.687e-9 sb=586.687e-9

** nch_lvt Instance M2 = hspiceD device m2
m2 avss on1 avss avss nch_lvt l=500e-9 w=4e-6 m=1 nf=4 sd=160e-9 ad=320e-15 as=380e-15 pd=4.64e-6 ps=6.76e-6 nrd=7.709e-3 nrs=7.709e-3 sa=586.687e-9 sb=586.687e-9

** nch_lvt Instance M0 = hspiceD device m0
m0 avss cmfb avss avss nch_lvt l=120e-9 w=10e-6 m=1 nf=10 sd=140e-9 ad=700e-15 as=780e-15 pd=11.4e-6 ps=13.56e-6 nrd=3.528e-3 nrs=3.528e-3 sa=647.216e-9 sb=647.216e-9

** nch_lvt Instance M66 = hspiceD device m66
m66 avss on1 avss avss nch_lvt l=120e-9 w=2e-6 m=1 nf=2 sd=140e-9 ad=140e-15 as=220e-15 pd=2.28e-6 ps=4.44e-6 nrd=17.078e-3 nrs=17.078e-3 sa=183.667e-9 sb=183.667e-9

** nch_lvt Instance M64 = hspiceD device m64
m64 avss op1 avss avss nch_lvt l=120e-9 w=2e-6 m=1 nf=2 sd=140e-9 ad=140e-15 as=220e-15 pd=2.28e-6 ps=4.44e-6 nrd=17.078e-3 nrs=17.078e-3 sa=183.667e-9 sb=183.667e-9

** nch_lvt Instance M55 = hspiceD device m55
m55 avss avss avss avss nch_lvt l=120e-9 w=2e-6 m=1 nf=2 sd=140e-9 ad=140e-15 as=220e-15 pd=2.28e-6 ps=4.44e-6 nrd=17.078e-3 nrs=17.078e-3 sa=183.667e-9 sb=183.667e-9

** nch_lvt Instance M21 = hspiceD device m21
m21 on op1 avss avss nch_lvt l=120e-9 w=12e-6 m=1 nf=12 sd=140e-9 ad=840e-15 as=920e-15 pd=13.68e-6 ps=15.84e-6 nrd=2.944e-3 nrs=2.944e-3 sa=749.116e-9 sb=749.116e-9

** nch_lvt Instance M19 = hspiceD device m19
m19 op on1 avss avss nch_lvt l=120e-9 w=12e-6 m=1 nf=12 sd=140e-9 ad=840e-15 as=920e-15 pd=13.68e-6 ps=15.84e-6 nrd=2.944e-3 nrs=2.944e-3 sa=749.116e-9 sb=749.116e-9

** nch_lvt Instance M29 = hspiceD device m29
m29 cmfb cmfb avss avss nch_lvt l=120e-9 w=1e-6 m=1 nf=1 sd=140e-9 ad=110e-15 as=110e-15 pd=2.22e-6 ps=2.22e-6 nrd=32.852e-3 nrs=32.852e-3 sa=110e-9 sb=110e-9

** nch_lvt Instance M14 = hspiceD device m14
m14 op1 cmfb avss avss nch_lvt l=120e-9 w=1e-6 m=1 nf=1 sd=140e-9 ad=110e-15 as=110e-15 pd=2.22e-6 ps=2.22e-6 nrd=32.852e-3 nrs=32.852e-3 sa=110e-9 sb=110e-9

** nch_lvt Instance M13 = hspiceD device m13
m13 on1 cmfb avss avss nch_lvt l=120e-9 w=1e-6 m=1 nf=1 sd=140e-9 ad=110e-15 as=110e-15 pd=2.22e-6 ps=2.22e-6 nrd=32.852e-3 nrs=32.852e-3 sa=110e-9 sb=110e-9

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
xr12 op avss  rppolywo_m lr=20e-6 wr=1e-6 multi=1 m=1
**xr12_2__dmy0  xr12_1__dmy0 xr12_2__dmy0 avss  rppolywo_m lr=20e-6 wr=1e-6 multi=1 m=1
**xr12_3__dmy0  xr12_2__dmy0 xr12_3__dmy0 avss  rppolywo_m lr=20e-6 wr=1e-6 multi=1 m=1
**xr12_4__dmy0  xr12_3__dmy0 op avss  rppolywo_m lr=20e-6 wr=1e-6 multi=1 m=1
**End of R12

**Series configuration of R13
xr13 vcmo avss  rppolywo_m lr=20e-6 wr=1e-6 multi=1 m=1
**xr13_2__dmy0  xr13_1__dmy0 xr13_2__dmy0 avss  rppolywo_m lr=20e-6 wr=1e-6 multi=1 m=1
**xr13_3__dmy0  xr13_2__dmy0 xr13_3__dmy0 avss  rppolywo_m lr=20e-6 wr=1e-6 multi=1 m=1
**xr13_4__dmy0  xr13_3__dmy0 vcmo avss  rppolywo_m lr=20e-6 wr=1e-6 multi=1 m=1
**End of R13

.ends OTA_FF_2s_v3e
** End of subcircuit definition.
