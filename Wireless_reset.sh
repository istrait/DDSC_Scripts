#!/bin/bash
while :
do
	echo Checking WiFi....
	ping -c4 192.168.1.1 > /dev/null
	if [ $? != 0 ] 
	then
  		echo "No network connection, restarting wlan0"
  		/sbin/ifdown 'wlan0'
  		sleep 5
  		/sbin/ifup --force 'wlan0'
	
	fi
	echo "WiFi OK!"
	sleep 60
done