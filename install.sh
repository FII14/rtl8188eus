#!/bin/bash

# Install Driver Wifi Realtek RTL8188EUS di Kali Linux

install_driver(){
        apt-get install bc
        apt-get install git
        apt-get install build-essential
        apt-get install libelf-dev
        apt-get install linux-headres-$(uname -r)
        git clone https://github.com/KanuX-14/rtl8188eus.git
        cd rtl8188eus
        echo "blacklist r8188eu" > "/etc/modprobe.d/realtek.conf"
        make
        make install
        modprobe 8188eu
}

while true
do
        read -p "Apakah anda mau menginstall Driver Wifi Realtek RTL8188EUS [iya/tidak]: " nanya

        if [[ "${nanya}" == "iya" ]]; then
                install_driver
                exit 0

        else
                echo "Masukan salah!"
                continue
        fi

done
