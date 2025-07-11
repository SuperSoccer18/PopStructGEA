#!/bin/bash
mig_rt=$1
sel_coeff=$2

# commands
echo running with mig_rt $mig_rt and sel_coeff $sel_coeff
slim -d mig_rt=$mig_rt -d sel_coeff=$sel_coeff ./scripts/GEA.slim