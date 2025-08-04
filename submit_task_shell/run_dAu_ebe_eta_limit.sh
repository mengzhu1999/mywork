#!/usr/bin/bash

cd /home/mengzhu/clvisc-master/pyvisc

# 参数数组
# params=("0_20" "20_40" "40_60" "60_80" "80_100")
params=("0_20" "20_40" "40_60" "60_88" "88_100")
# params=("0_30" "30_60" "60_80")
# params=("0_5")


event_start=0
event_end=1000

# 遍历参数数组并执行python脚本
for param in "${params[@]}"
do
    echo "Running: python3 dAu_ebe_hydro_eta_limit.py dAu200 $param 0 $event_start $event_end"
    python3 dAu_ebe_hydro_eta_limit.py dAu200 $param 0 $event_start $event_end 
done

