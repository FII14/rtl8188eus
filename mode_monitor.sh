#!/bin/bash

# Program : mengatifkan mode moitor
# Pembuat : Rofi [FII14]
# GitHub  : https://github.com/FII14/rtl8188eus

ifconfig wlan0 down
airmon-ng check kill
iwconfig wlan0 mode monitor
ifconfig wlan0 up
iwconfig
aireplay-ng --test wlan0
