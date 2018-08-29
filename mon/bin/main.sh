#!/bin/sh

/sbin/ifconfig | grep -A3 'en0:' | grep 'inet '|awk '{print $2}'

dir=`pwd`
last_dir=`echo $dir | awk -F'/' '{print $NF}'`

if [ $last_dir == 'bin' ] || [ $last_dir == 'bin/' ]
then
    conf_file="../conf/mon.conf"
else
then
    echo "You should change to bin."
fi


