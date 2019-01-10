#!/bin/bash


ps_num=`ps aux | sort -nrk 3,3 | head -n 1 | awk '{print $2}'`
ps_cpu=`ps aux | sort -nrk 3,3 | head -n 1 | awk '{print $3}'`
ps_max=500

if [ "$ps_cpu" -gt "$ps_max" ] &> /dev/null ; then
        echo "`date +%F_%H-%M` ===> $ps_num - $ps_cpu% ===> load average is high [`cat /proc/loadavg | awk '{print $1,$2,$3}'`]">>/var/log/kill-script.log
        kill -9 "$ps_num"
else
        echo "`date +%F_%H-%M` ===> load average is fine [`cat /proc/loadavg | awk '{print $1,$2,$3}'`]">>/var/log/kill-script.log
fi
