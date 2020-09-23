#!/bin/bash

BENCH=./benchmark

time python3 main.py --netlist $BENCH/CTDSM_CORE_NEW.sp \
                          $BENCH/ADC_CORE.sp \
                          $BENCH/CTDTDSM_V3.sp \
                          $BENCH/adc1.sp \
                          $BENCH/adc2.sp \
                --sym $BENCH/sym/CTDSM_CORE_NEW.sym \
                      $BENCH/sym/ADC_CORE.sym \
                      $BENCH/sym/CTDTDSM_V3.sym \
                      $BENCH/sym/adc1.sym \
                      $BENCH/sym/adc2.sym \
                --s3det $BENCH/s3det/CTDSM_CORE_NEW.s3det \
                        $BENCH/s3det/ADC_CORE.s3det \
                        $BENCH/s3det/CTDTDSM_V3.s3det \
                --s3det_pair $BENCH/s3det/CTDSM_CORE_NEW.pair \
                             $BENCH/s3det/ADC_CORE.pair \
                             $BENCH/s3det/CTDTDSM_V3.pair \
                --load_model ./models/sage2_5_600 \
                #--save_model ./models/model \

#time python3 main.py --netlist $BENCH/$1.sp \
                #--sym $BENCH/sym/$1.sym \
                #--s3det $BENCH/s3det/$1.s3det \
                #--s3det_pair $BENCH/s3det/$1.pair \
                #--load_model ./models/sage2_5_600 \
