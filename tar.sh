#!/bin/bash

source "effect"
source "tar_type.sh"
source "zip_type.sh"

error(){
	echo "File didn't exist!! Try again..."
	echo -e "\033[1;31m[Usage]\033[0m: Enter the file path: /path/to/file"
	exit 0
}


menu(){
	echo " "
	echo -n "Select the Mode for Archive:
	1) TAR
	2) ZIP
	3) Menu
	Option: "
}      

echo " "
clear

logo

echo " "

echo -n "What you want to do select option accorndingly: 
1) Make BackUp of File
2) Extract the File
3) Exit
Option: "

read ops

if [ $ops -ge 0 ]; then
	if [ $ops == 1 ]; then
		echo " "
		echo -n "Enter the path of file: "
		read file0

	        menu
		read mode

		if [ $mode == 1 ]; then
			if [ $file0 -e ]; then
				tar_mode
			else
				error
			fi

		elif [ $mode == 2 ]; then
			if [ $file0 -e ]; then
				zip
			else
				error
			fi

		else
			menu

		fi
	
	elif [ $ops == 2 ]; then

		echo " "
		echo -n "Enter the path of file: "
		read file0

	        menu
		read mode

		if [ $mode == 1 ]; then
			if [ $file0 -e ]; then
				extract_tar
			else
				error
			fi
	
		elif [ $mode == 2 ]; then
			if [ $file0 -e ]; then
				extract_zip
			else
				error
			fi
		fi
	fi
else
	echo "Bye Bye Buddy!! See you next time!!"

fi
			
