#/usr/bin/bash
A=d
B=Au
Neve=10000
output_path=/media/mengzhu/west16/d_Au_200_new
args1="--ncoll --grid-max=16 --grid-step=0.16 --nsteps-etas=121 --sqrts 200"
args2="-v 0.88 -w 1.3 -m 16 --kT-min=0.33 --shape-alpha=4.6 --shape-beta=0.19 -k 0.1 --flatness 1.0 --mid-norm=1.714 --mid-power=0.3332"
trento-3 $A $B $Neve $args1 $args2 -o $output_path/d_Au_s200_n10000.h5 >$output_path/d_Au_s200_n10000.dat 

