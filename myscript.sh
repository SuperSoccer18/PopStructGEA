#!/bin/bash

mig_rt=$1
mut_rt=$2
sel_coeff=$3
output_file=$4

# commands
slim -d mig_rt=$mig_rt -d mut_rt=$mut_rt -d sel_coeff=$sel_coeff GEA.slim > "$output_file"

