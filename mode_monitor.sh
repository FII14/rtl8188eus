#!/bin/basha
# script untuk mengatifkan mode moitor

ifconfig wlan0 down
airmon check kill
iwconfig wlan0 mode monitor
ifconfig wlano up
iwconfig
aireplay-ng --test wlan0
