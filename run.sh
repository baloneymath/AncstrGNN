#!/bin/bash

BENCH=./benchmark

#time python3 main.py --netlist $BENCH/CTDSM_CORE_NEW.sp \
                          #$BENCH/ADC_CORE.sp \
                          #$BENCH/CTDTDSM_V3.sp \
                          #$BENCH/adc1.sp \
                          #$BENCH/adc2.sp \
                #--sym $BENCH/sym/CTDSM_CORE_NEW.sym \
                      #$BENCH/sym/ADC_CORE.sym \
                      #$BENCH/sym/CTDTDSM_V3.sym \
                      #$BENCH/sym/adc1.sym \
                      #$BENCH/sym/adc2.sym \
                #--s3det $BENCH/s3det/CTDSM_CORE_NEW.s3det \
                        #$BENCH/s3det/ADC_CORE.s3det \
                        #$BENCH/s3det/CTDTDSM_V3.s3det \
                        #$BENCH/s3det/adc1.s3det \
                        #$BENCH/s3det/adc2.s3det \
                #--s3det_pair $BENCH/s3det/CTDSM_CORE_NEW.pair \
                             #$BENCH/s3det/ADC_CORE.pair \
                             #$BENCH/s3det/CTDTDSM_V3.pair \
                             #$BENCH/s3det/adc1.pair \
                             #$BENCH/s3det/adc2.pair \
                #--load_model ./models/ggcn2_5_600_l0.974 \
                #--save_model ./models/ggcn2_5_600 \

#time python3 main.py --netlist $BENCH/$1.sp \
                #--sym $BENCH/sym/$1.sym \
                #--s3det $BENCH/s3det/$1.s3det \
                #--s3det_pair $BENCH/s3det/$1.pair \
                #--load_model ./models/sage2_5_600 \

time python3 main.py --netlist $BENCH/CTDSM_CORE_NEW.sp \
                          $BENCH/ADC_CORE.sp \
                          $BENCH/CTDTDSM_V3.sp \
                          $BENCH/adc1.sp \
                          $BENCH/adc2.sp \
                          $BENCH/yibo/netlist/2019_10_01_5t_OTA.sp \
                          $BENCH/yibo/netlist/CLK_COMP.sp \
                          $BENCH/yibo/netlist/CP_branch_LVT_v5.sp \
                          $BENCH/yibo/netlist/Cascode_current_mirrot_OTA.sp \
                          $BENCH/yibo/netlist/Comparator_1to7_0p7_lvt.sp \
                          $BENCH/yibo/netlist/Comparator_not_clocked.sp \
                          $BENCH/yibo/netlist/Current_mirror_OTA.sp \
                          $BENCH/yibo/netlist/DAC.sp \
                          $BENCH/yibo/netlist/NRZ_TRI_DAC_v3_dnw.sp \
                          $BENCH/yibo/netlist/Retiming_Latch_common.sp \
                          $BENCH/yibo/netlist/Telescopic_OTA_stacked_single_ended.sp \
                          $BENCH/yibo/netlist/myComparator_v3.sp \
                          $BENCH/COMPARATOR_PRE_AMP.sp \
                          $BENCH/OTA_FF_2s_v3e.sp \
                          $BENCH/Gm1_v5_Practice.sp \
                --sym $BENCH/sym/CTDSM_CORE_NEW.sym \
                      $BENCH/sym/ADC_CORE.sym \
                      $BENCH/sym/CTDTDSM_V3.sym \
                      $BENCH/sym/adc1.sym \
                      $BENCH/sym/adc2.sym \
                      $BENCH/yibo/sym2/2019_10_01_5t_OTA.sym \
                      $BENCH/yibo/sym2/CLK_COMP.sym \
                      $BENCH/yibo/sym2/CP_branch_LVT_v5.sym \
                      $BENCH/yibo/sym2/Cascode_current_mirrot_OTA.sym \
                      $BENCH/yibo/sym2/Comparator_1to7_0p7_lvt.sym \
                      $BENCH/yibo/sym2/Comparator_not_clocked.sym \
                      $BENCH/yibo/sym2/Current_mirror_OTA.sym \
                      $BENCH/yibo/sym2/DAC.sym \
                      $BENCH/yibo/sym2/NRZ_TRI_DAC_v3_dnw.sym \
                      $BENCH/yibo/sym2/Retiming_Latch_common.sym \
                      $BENCH/yibo/sym2/Telescopic_OTA_stacked_single_ended.sym \
                      $BENCH/yibo/sym2/myComparator_v3.sym \
                      $BENCH/sym/COMPARATOR_PRE_AMP.sym \
                      $BENCH/sym/Gm1_v5_Practice.sym \
                      $BENCH/sym/OTA_FF_2s_v3e.sym \
                --s3det $BENCH/s3det/CTDSM_CORE_NEW.s3det \
                        $BENCH/s3det/ADC_CORE.s3det \
                        $BENCH/s3det/CTDTDSM_V3.s3det \
                        $BENCH/s3det/adc1.s3det \
                        $BENCH/s3det/adc2.s3det \
                --load_model ./models/ggcn2_5_600_l0.974 \
                --s3det_pair $BENCH/s3det/CTDSM_CORE_NEW.pair \
                             $BENCH/s3det/ADC_CORE.pair \
                             $BENCH/s3det/CTDTDSM_V3.pair \
                             $BENCH/s3det/adc1.pair \
                             $BENCH/s3det/adc2.pair \
                #--save_model ./models/model \
