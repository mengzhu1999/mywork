#/bin/bash

A=d
B=Au
C=/home/mengzhu/mywork/d_Au_work/data/DWF_d_xyz_1000000.h5
Neves=10000000
output_path=/home/mengzhu/mywork/d_Au_work/data

args="--ncoll --grid-max=16 --grid-step=0.16 --cross-section 4.23"


# d + Au: HWF
echo 'calc d+Au HWF: '
echo "args: $args"
trento $A $B $Neves $args  >$output_path/trento2d_HWF_d_Au_ncoll_10000000.dat
echo -e 'd+Au HWF has finished\n'

# d + Au: DWF
echo 'calc d+Au DWF: '
echo "args:$args"
trento $C $B $Neves $args  >$output_path/trento2d_DWF_d_Au_ncoll_10000000.dat
echo -e 'd+Au DWF has finished\n'
