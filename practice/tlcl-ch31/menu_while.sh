#!/bin/bash

# This is a test for looping with While in a menu driven task. 


delay=3 # number of seconds to display results 


while [[ "$REPLY" != 0 ]]; do
	clear
	cat << _EOF_
	Please select:

	1. Display System Information
	2. Display Disk space 
	3. Display Home space Utilization 
	0. Quit 
_EOF_
	read -r -p "Enter selection [0-3] > "


if [[ "$REPLY" =~ ^[0-3]$ ]]; then
	if [[ "$REPLY" == 1 ]]; then
	echo "Hostname: $HOSTNAME"
	uptime
	sleep "$delay"
	fi
	
	if [[ "$REPLY" == 2 ]]; then
	df -h
	sleep "$delay"
	fi 
	
	if [[ "$REPLY" == 3 ]]; then
	
		if [[ "$(id -u)" -eq 0 ]]; then
			echo "Home space Utilization (All Users)"
			du -sh /home/*
		else
		echo "Home space utilization (#USER)"
		du -sh "$HOME"
		fi
		sleep "$delay"
	fi 
else 
	echo "Invalid entry."
	sleep "$delay"
fi
done

echo "program terminated."
	
