#!/bin/bash

# Install Realtek RTL8188EUS Wifi Driver on Kali Linux

install_driver(){
        apt-get install bc
        apt-get install git
        apt-get install build-essential
        apt-get install libelf-dev
	apt-get install linux-headers-$(uname -r)
        git clone https://github.com/KanuX-14/rtl8188eus.git
        cd rtl8188eus
        echo "blacklist r8188eu" > "/etc/modprobe.d/realtek.conf"
        make
        make install
        modprobe 8188eu
	echo "RReebot Kali Linux, and run the script mode_monitor.sh"
	exit 0
}

while true
do
        read -p "Do you want to install the Realtek RTL8188EUS Wifi Driver [yes/no]: " ask

        if [[ "${ask}" == "yes" ]]; then
                install_driver
                exit 0

        elif [[ "${ask}" == "no" ]]; then
                exi0

        else
                echo "Wrong input!"
                continue
        fi

done
