#!/bin/bash

if [ -f "/proc/loadavg" ]; then
    AVG=`cat /proc/loadavg | awk '{print $1, $2, $3}'`
else
    AVG=`sysctl -n vm.loadavg | awk '{print $2, $3, $4}'`
fi
echo $AVG
