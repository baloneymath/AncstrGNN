#!/bin/bash

BENCH=./benchmark
CIR=$1

python3 main.py --netlist $BENCH/$1.sp \
                --sym $BENCH/sym/$1.sym


