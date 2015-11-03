#!/bin/bash
# File: "/lib/systemd/system-sleep/calibrate_tp.sh".

case $1/$2 in
    pre/*)
	;;
    post/*)
        #Calibrate the touchpad
        CALIBRATE=`find /sys/devices/pci* -name 'calibrate' | head -1`
        if [ -n $CALIBRATE ]
        then
          echo 1 > $CALIBRATE
        fi
	;;
esac
exit 0
