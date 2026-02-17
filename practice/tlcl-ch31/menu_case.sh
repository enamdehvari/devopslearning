#!/bin/bash


# case menu

DELAY=3


until [[ "$REPLY" = 0 ]]; do
 	echo "please select
		1 Display system information
		2.Display Disk space
		3.Display Home Space Utilization 
		0.Quit"

	read -r -p "make a choice [0-3] > "
if ! [[ "$REPLY" =~ ^[0-3]$ ]]; then
	echo "wrong answer dude."
	sleep $DELAY
	continue
fi
	case "$REPLY" in
	0) echo "program terminated."
	exit
	;;
	1) echo "Hostname: $HOSTNAME"
	uptime
	sleep $DELAY
	;;
	2) df -h
	;;
	3) if [[ "$(id -u)" -eq 0 ]]; then
		echo "Home Space Utilization (All users)"
		du -sh /home/*
		else 
			echo "Home Space Utilization ($USER)"
			du -sh "$HOME"
		fi
		;;
esac
done
echo "game over"
