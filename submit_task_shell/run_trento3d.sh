#/bin/bash

A=d
B=Au
C=/home/mengzhu/mywork/d_Au_work/data/DWF_d_xyz_1000000.h5
Neves=50000
output_path=/home/mengzhu/d_Au_work/data
output_path_HWF=/media/mengzhu/74e6f585-9c67-40c0-a5e9-89fb98e77bab/home/mengzhu/d_Au_work/d_Au_HWF
output_path_DWF=/media/mengzhu/74e6f585-9c67-40c0-a5e9-89fb98e77bab/home/mengzhu/d_Au_work/d_Au_DWF
args="--ncoll --grid-max=16 --grid-step=0.16 --nsteps-etas=1 --sqrts=200"


# d + Au: HWF
echo 'trento-3 d+Au HWF: '
echo "$args"
trento-3 $A $B $Neves $args  >$output_path_HWF/trento3d_HWF_d_Au_ncoll_50000.dat

# d + Au: DWF
echo 'trento-3 d+Au DWF: '
echo "$args"
trento-3 $C $B $Neves $args  >$output_path_DWF/trento3d_DWF_d_Au_ncoll_50000.dat
