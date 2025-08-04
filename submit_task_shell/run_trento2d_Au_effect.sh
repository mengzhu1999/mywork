#/bin/bash

# consider Au with beta2 without beta4 
# option of d
A=d
B=/home/mengzhu/mywork/d_Au_work/data/DWF_d_xyz_1000000.h5

# option of Au
C=Au
D=/home/mengzhu/mywork/d_Au_work/data/Au_xyz_def_beta2_1000000.h5
E=/home/mengzhu/mywork/d_Au_work/data/Au_xyz_def_beta4_1000000.h5

Neves=10000000
output_path=/home/mengzhu/mywork/d_Au_work/data

args="--ncoll --grid-max=16 --grid-step=0.16 --cross-section 4.23"


# HWF_d + spherical_Au:
echo 'calc HWF_d + spherical_Au: '
echo "args: $args"
trento $A $C $Neves $args  >$output_path/trento2d_HWF_d_sph_Au_ncoll_10000000.dat
echo -e 'HWF_d + spherical_Au has finished\n'

# HWF_d + deformed_beta2_Au"
echo 'calc HWF_d + deformed_beta2_Au: '
echo "args: $args"
trento $A $D $Neves $args  >$output_path/trento2d_HWF_d_def_beta2_Au_ncoll_10000000.dat
echo -e 'HWF_d + deformed_beta2_Au has finished\n'

# HWF_d + deformed_beta4_Au"
echo 'calc HWF_d + deformed_beta4_Au: '
echo "args: $args"
trento $A $E $Neves $args  >$output_path/trento2d_HWF_d_def_beta4_Au_ncoll_10000000.dat
echo -e 'HWF_d + deformed_beta4_Au has finished\n'

# DWF_d + spherical_Au:
echo 'calc DWF_d + spherical_Au: '
echo "args: $args"
trento $B $C $Neves $args  >$output_path/trento2d_DWF_d_sph_Au_ncoll_10000000.dat
echo -e 'DWF_d + spherical_Au has finished\n'

# DWF_d + deformed_beta2_Au:
echo 'calc DWF_d + deformed_beta2_Au: '
echo "args: $args"
trento $B $D $Neves $args  >$output_path/trento2d_DWF_d_def_beta2_Au_ncoll_10000000.dat
echo -e 'DWF_d + deformed_beta2_Au has finished\n'

# DWF_d + deformed_beta4_Au:
echo 'calc DWF_d + deformed_beta4_Au: '
echo "args: $args"
trento $B $E $Neves $args  >$output_path/trento2d_DWF_d_def_beta4_Au_ncoll_10000000.dat
echo -e 'DWF_d + deformed_beta4_Au has finished\n'
