#!/bin/bash 

# I am guarding my pathname to not fail, in case it does not match anything. 



for i in distros*.text; do 
	if [[ -e "$i" ]]; then
		echo "$i"
	else echo " not here dude."
	fi
done
