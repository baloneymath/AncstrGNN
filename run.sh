#!/bin/bash

BENCH=./benchmark

python3 main.py --netlist $BENCH/CTDSM_CORE_NEW.sp \
                          $BENCH/ADC_CORE.sp \
                          $BENCH/CTDTDSM_V3.sp \
                          $BENCH/adc1.sp \
                --sym $BENCH/sym/CTDSM_CORE_NEW.sym \
                      $BENCH/sym/ADC_CORE.sym \
                      $BENCH/sym/CTDTDSM_V3.sym \
                      $BENCH/sym/adc1.sym


