#!/bin/bash

#Detect and format camera media.

{
	sudo mkfs.exfat -n UNTITLED /dev/sda

		if [ $? -eq 0 ]; then
			var1=“0”;
		fi

	sudo mkfs.exfat -n UNTITLED /dev/sdb

		if [ $? -eq 0 ]; then
			var2=“0”;
		fi

	sudo mkfs.exfat -n UNTITLED /dev/sdc

		if [ $? -eq 0 ]; then
			var3=“0”;
		fi

	sudo mkfs.exfat -n UNTITLED /dev/sdd

		if [ $? -eq 0 ]; then
			var4=“0”;
		fi

	sudo mkfs.exfat -n UNTITLED /dev/sde

		if [ $? -eq 0 ]; then
			var5=“0”;
		fi

	sudo mkfs.exfat -n UNTITLED /dev/sdf

		if [ $? -eq 0 ]; then
			var6=“0”;
		fi

	sudo mkfs.exfat -n UNTITLED /dev/sdg

		if [ $? -eq 0 ]; then
			var7=“0”;
		fi

} 1>/dev/null 2>&1

#Display successful (green text) or unsuccessful (red text) message.

if [ “$var1” = 0 ] || [ “$var2” = 0 ] || [ “$var3” = 0 ] || [ “$var4” = 0 ] || [ “$var5” = 0 ] || [ “$var6” = 0 ] || [ “$var7” = 0 ] ; then
	echo “$(tput setaf 2) FORMAT SUCCESSFUL! PLEASE REMOVE CARD.”;
else
	echo “$(tput setaf 1) FORMAT UNSUCCESSFUL! PLEASE TRY AGAIN.”;
fi

