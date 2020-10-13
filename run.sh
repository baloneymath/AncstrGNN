#!/bin/bash

BENCH=./benchmark

time python3 main.py --netlist \
                          $BENCH/adc1.sp \
                          $BENCH/CTDSM_CORE_NEW.sp \
                          $BENCH/adc2.sp \
                          $BENCH/ADC_CORE.sp \
                          $BENCH/CTDTDSM_V3.sp \
                --sym \
                      $BENCH/sym/adc1.sym \
                      $BENCH/sym/CTDSM_CORE_NEW.sym \
                      $BENCH/sym/adc2.sym \
                      $BENCH/sym/ADC_CORE.sym \
                      $BENCH/sym/CTDTDSM_V3.sym \
                --s3det \
                        $BENCH/s3det/adc1.s3det \
                        $BENCH/s3det/CTDSM_CORE_NEW.s3det \
                        $BENCH/s3det/adc2.s3det \
                        $BENCH/s3det/ADC_CORE.s3det \
                        $BENCH/s3det/CTDTDSM_V3.s3det \
                --load_model ./models/ggcn2_5_600_l0.974 \
                #--save_model ./models/model \
                #--s3det_pair \
                            #$BENCH/s3det/adc1.pair \
                            #$BENCH/s3det/CTDSM_CORE_NEW.pair \
                            #$BENCH/s3det/adc2.pair \
                            #$BENCH/s3det/ADC_CORE.pair \
                            #$BENCH/s3det/CTDTDSM_V3.pair \

#time python3 main.py --netlist $BENCH/$1.sp \
                #--sym $BENCH/sym/$1.sym \
                #--s3det $BENCH/s3det/$1.s3det \
                #--s3det_pair $BENCH/s3det/$1.pair \
                #--load_model ./models/sage2_5_600 \

#time python3 main.py --netlist \
                          #$BENCH/adc1.sp \
                          #$BENCH/CTDSM_CORE_NEW.sp \
                          #$BENCH/adc2.sp \
                          #$BENCH/ADC_CORE.sp \
                          #$BENCH/CTDTDSM_V3.sp \
                          #$BENCH/yibo/netlist/2019_10_01_5t_OTA.sp \
                          #$BENCH/yibo/netlist/CLK_COMP.sp \
                          #$BENCH/yibo/netlist/CP_branch_LVT_v5.sp \
                          #$BENCH/yibo/netlist/Cascode_current_mirrot_OTA.sp \
                          #$BENCH/yibo/netlist/Comparator_1to7_0p7_lvt.sp \
                          #$BENCH/yibo/netlist/Comparator_not_clocked.sp \
                          #$BENCH/yibo/netlist/Current_mirror_OTA.sp \
                          #$BENCH/yibo/netlist/DAC.sp \
                          #$BENCH/yibo/netlist/NRZ_TRI_DAC_v3_dnw.sp \
                          #$BENCH/yibo/netlist/Retiming_Latch_common.sp \
                          #$BENCH/yibo/netlist/Telescopic_OTA_stacked_single_ended.sp \
                          #$BENCH/yibo/netlist/myComparator_v3.sp \
                          #$BENCH/yibo/netlist/OTA_FF_2s_v3e.sp \
                          #$BENCH/COMPARATOR_PRE_AMP.sp \
                          #$BENCH/Gm1_v5_Practice.sp \
                #--sym \
                      #$BENCH/yibo/sym2/2019_10_01_5t_OTA.sym \
                      #$BENCH/yibo/sym2/CLK_COMP.sym \
                      #$BENCH/yibo/sym2/CP_branch_LVT_v5.sym \
                      #$BENCH/yibo/sym2/Cascode_current_mirrot_OTA.sym \
                      #$BENCH/yibo/sym2/Comparator_1to7_0p7_lvt.sym \
                      #$BENCH/yibo/sym2/Comparator_not_clocked.sym \
                      #$BENCH/yibo/sym2/Current_mirror_OTA.sym \
                      #$BENCH/yibo/sym2/DAC.sym \
                      #$BENCH/yibo/sym2/NRZ_TRI_DAC_v3_dnw.sym \
                      #$BENCH/yibo/sym2/Retiming_Latch_common.sym \
                      #$BENCH/yibo/sym2/Telescopic_OTA_stacked_single_ended.sym \
                      #$BENCH/yibo/sym2/myComparator_v3.sym \
                      #$BENCH/yibo/sym2/OTA_FF_2s_v3e.sym \
                      #$BENCH/sym/COMPARATOR_PRE_AMP.sym \
                      #$BENCH/sym/Gm1_v5_Practice.sym \
                #--sfa \
                      #$BENCH/sfa/2019_10_01_5t_OTA.sfa \
                      #$BENCH/sfa/CLK_COMP.sfa \
                      #$BENCH/sfa/CP_branch_LVT_v5.sfa \
                      #$BENCH/sfa/Cascode_current_mirrot_OTA.sfa \
                      #$BENCH/sfa/Comparator_1to7_0p7_lvt.sfa \
                      #$BENCH/sfa/Comparator_not_clocked.sfa \
                      #$BENCH/sfa/Current_mirror_OTA.sfa \
                      #$BENCH/sfa/DAC.sfa \
                      #$BENCH/sfa/NRZ_TRI_DAC_v3_dnw.sfa \
                      #$BENCH/sfa/Retiming_Latch_common.sfa \
                      #$BENCH/sfa/Telescopic_OTA_stacked_single_ended.sfa \
                      #$BENCH/sfa/myComparator_v3.sfa \
                      #$BENCH/sfa/OTA_FF_2s_v3e.sfa \
                      #$BENCH/sfa/COMPARATOR_PRE_AMP.sfa \
                      #$BENCH/sfa/Gm1_v5_Practice.sfa \
                #--load_model ./models/ggcn2_20_600_l0.99 \
                #--save_model ./models/model \
                #--load_model ./models/model
                #--load_model ./models/ggcn2_noRelu_64out_20_600_l0.88 \
                #--load_model ./models/ggcn2_20_600_l1.04_indeg \
                #--load_model ./models/ggcn2_20_600_l0.99 \
                #--load_model ./models/ggcn2_20_1000_l0.90 \
