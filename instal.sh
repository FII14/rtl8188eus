#!/bin/bash

instal_driver(){
        apt-get install bc
        apt-get install build-essential
        apt-get install libelf-dev
	apt-get install linux-headers-$(uname -r)
        git clone https://github.com/KanuX-14/rtl8188eus.git
        cd rtl8188eus
        echo "blacklist r8188eu" > "/etc/modprobe.d/realtek.conf"
        make
        make install
        modprobe 8188eu
	echo "Reboot Kali Linux dan jalankan skrip 'mode_monitor.sh' dengan perintah 'bash mode_monitor.sh'."
        exit 0
}

while true
do
        read -p "Apakah Anda ingin menginstal Driver Wifi Realtek RTL8188EUS [iya/tidak]: " nanya

        if [[ "${nanya}" == "iya" ]]; then
                instal_driver
                exit 0

        elif [[ "${nanya}" == "tidak" ]]; then
                exit 1

        else
                echo "Masukkan salah!"
                continue
        fi

done
