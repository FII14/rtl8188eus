#!/bin/bash
# script untuk mengatifkan mode moitor

ifconfig wlan0 down
airmon check kill
iwconfig wlan0 mode monitor
ifconfig wlan0 up
iwconfig
aireplay-ng --test wlan0

# --- jangan di oprak-aprik oke! ---
