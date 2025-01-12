#!/bin/bash

	echo
	echo rm "/dev/shm/crackerjackfile.txt" 2> /dev/null
	rm "/dev/shm/crackerjackfile.txt" 2> /dev/null
	echo
	echo rm "/dev/shm/passfound.txt" 2> /dev/null
	rm "/dev/shm/passfound.txt" 2> /dev/null
	echo
	read -n 1 -s -r -p "Press ENTER key to continue !"
	echo
	exit
