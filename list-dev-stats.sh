#!/bin/bash
cd /etc/ansible/clock-signal-devs
export V1_Devs=`grep V01 * | wc -l`
export V2_Devs=`grep V02 * | wc -l`
export V3_Devs=`grep V03 * | wc -l`

echo "Potential devices requiring Clock Signal issue replacement "
echo "V01 Devices : $V1_Devs"
echo "V02 Devices : $V2_Devs"
echo "Devices that may not require replacement " 
echo "V03 Devices : $V3_Devs"

echo "Following are devices with Versions and Serial numbers " 
grep VID *
