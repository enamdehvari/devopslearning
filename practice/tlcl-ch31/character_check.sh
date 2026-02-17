#!/bin/bash

# test multiple action in case


read  -r -p "type your character > " 
case "$REPLY" in
	[[:upper:]]) echo "'$REPLY' is upper case." ;;&
	[[:lower:]]) echo "'$REPLY' is lower case." ;;&
	[[:alpha:]])	echo "'$REPLY' is alphabetic." ;;&
	[[:digit:]]) echo "'$REPLY' is a digit." ;;&

esac
