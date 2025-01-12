#!/bin/bash

	printf '\033[8;40;100t'		# will resize the window.

echo -------------------------===== Start of bash ====-------------------------

	start=$SECONDS
	now=$(date +"%Y-%m-%d_%A_%H:%M:%S")

	echo
	me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
	echo "Running : $me"
	
	red=`tput setaf 1`
	green=`tput setaf 2`
	yellow=`tput setaf 11`
	blue=`tput setaf 12`
	orange=`tput setaf sgr9`
	reset=`tput sgr0`

	## General purposes variables. Needed before program to random variables.
	## All variables must be 0
	part=0		## don't change this value. (0)
	debug=0		## test debug. (0 or 1 debug mode)
	error=0		## test error. (0 or 1 make error)
	primeerror=0	## ending error detector
	
	## All variables must be 0 or 1
	automatic=0	## automatic without (at least minimal) dialog box.
	noquit=1	## noquit option. (0 or 1)

	## Auto-generated variables. Do not change
	random=$(shuf -i 00000-999999999 -n 1)	# Used for temp folders. A big number hard to guess for security reasons.
	random2=$RANDOM

	echo
	echo "Software lead-in. LostByteSoft ; https://github.com/LostByteSoft"
	echo
	echo CrackerJack password bruteforce for 7z
	echo
	echo "NEVER remove dual ## in front of lines. Theses are code annotations."
	echo "You can test / remove single # for testing purpose."
	echo
	echo "Current time : $now"
	echo
	echo "Common variables, you can changes theses variables as you wish to test."
	echo "Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random random2=$random2 primeerror=$primeerror"
	me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
	echo
	echo "Running job file :"
	echo
	echo $(dirname "$0")/$me
	echo
	
	loop=0
	maxloop=99999999999999
	passfind=0
	sleep=0.1
	loop1=0
	maxloop1=5
	alreadyselected=0

echo -------------------------========================-------------------------
echo "Select a password protected 7z using dialog !"

	if [ -f "/dev/shm/crackerjackfile.txt" ]; then
		alreadyselected=1
		fi
	
	if [ "$alreadyselected" -eq "0" ]; then
			file="$(zenity --file-selection --file-filter="*.7z" --filename=$HOME/ --title="Select a 7z file")"	## File select.
			echo $file >> "/dev/shm/crackerjackfile.txt"
		else
			file=$(cat "/dev/shm/crackerjackfile.txt")
		fi

	if test -z "$file"
		then
			echo "You don't have selected a file, now exit in 3 seconds."
			echo -------------------------========================-------------------------
			sleep 3
			echo
			exit
		else
			echo "You have selected :"
			echo "$file"
			sleep 1
		fi
		echo

echo -------------------------========================-------------------------
	echo "Input name, directory and output name : (Debug helper)"
	echo
## Set working path.
	BASEDIR=$(dirname "$0")
	echo Basedir : "$BASEDIR"
	dir=$(pwd)
## file or folder selected
	echo "Working dir : "$dir""
	echo Input file : "$file"
	export VAR="$file"
	echo
## directory section
	INPUT="$(dirname "${VAR}")"	
	echo "Get the last Folder : ${INPUT##*/}"
	echo Base directory : "$(dirname "${VAR}")"
	echo Base name: "$(basename "${VAR}")"
	echo
## Output file name
	name=`echo "$file" | rev | cut -f 2- -d '.' | rev` ## remove extension
	echo "Output name ext : "$name""
	name1=`echo "$(basename "${VAR}")" | rev | cut -f 2- -d '.' | rev` ## remove extension
	echo "Output name bis : "$name1""
	
	if [ "$debug" -eq "1" ]; then
		echo
		echo "${yellow}█████ DEBUG SLEEP (5 sec) █████${reset}"
		echo
		echo "Debug data : autoquit=$autoquit debug=$debug error=$error part=$part noquit=$noquit random=$random"
		sleep 5
		echo
	fi
echo
echo -------------------------========================-------------------------
	echo Stat file :
	echo
	stat $file
	echo
echo -------------------------========================-------------------------
	echo md5sum file :
	echo
	md5sum $file
	echo
echo -------------------------========================-------------------------
	echo Sha256 file :
	echo
	sha256sum $file
	echo
echo -------------------------========================-------------------------	

	functionrandom () {
		options=("0" "1" "2" "3" "4" "5" "6" "7" "8" "9" \
		"a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" \
		"A" "B" "C" "D" "F" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z" )
		random_index=$(( RANDOM % ${#options[@]} ))
		random1=${options[$random_index]}
		random_index=$(( RANDOM % ${#options[@]} ))
		random2=${options[$random_index]}
		random_index=$(( RANDOM % ${#options[@]} ))
		random3=${options[$random_index]}
		random_index=$(( RANDOM % ${#options[@]} ))
		random4=${options[$random_index]}
		random_index=$(( RANDOM % ${#options[@]} ))
		random5=${options[$random_index]}
		random_index=$(( RANDOM % ${#options[@]} ))
		random5=${options[$random_index]}
		random_index=$(( RANDOM % ${#options[@]} ))
		random6=${options[$random_index]}
		randomfinal=$random1$random2$random3$random4$random5$random6
		}

##-------------------------=========== SEPARATOR =============-------------------------

	echo
	echo Exemples ramdom search :
	functionrandom
	echo randomfinal $randomfinal
	functionrandom
	echo randomfinal $randomfinal
	functionrandom
	echo randomfinal $randomfinal
	echo
	echo "Start multiple CrackerJack_X_char.sh or/and CrackerJack_DictionnaryAttack.sh (at least 10 to try to reduce the time to bruteforce)."
	echo
	echo "Start bruteforce in 3 sec..."
	sleep 3
	echo
	
	## 
	## 62 * 62 *62 *62 *62 = 916132832

##-------------------------=========== SEPARATOR =============-------------------------

printf '\033[8;3;80t'		# will resize the window.

while [ "$loop1" -le "$maxloop1" ]
	do
	functionrandom
	echo
	echo Loop code : $loop RandomPass : $randomfinal
	if [ -f /dev/shm/passfound.txt ]; then
		passfind=1
		fi
	if [ "$passfind" -eq 1 ]; then
		printf '\033[8;9;80t'		# will resize the window.
		echo
		echo "${green}███████████ PASSWORD FOUND ███████████${reset}"
		echo
		randomfinal=$(cat "/dev/shm/passfound.txt")
		echo PASSWORD IS : $randomfinal
		echo
		break
		fi
	sleep $sleep	## needed to give time to close/reset
	7z t $file -bb3 -bse1 -p$randomfinal

	if [ "$?" -eq 0 ]; then
		printf '\033[8;10;80t'		# will resize the window.
		echo
		echo "${green}███████████ PASSWORD FOUND ███████████${reset}"
		echo
		echo Try : $loop PASSWORD IS : $randomfinal
		echo
		echo "	This script take $(( SECONDS - start )) seconds to complete."
		date=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
		echo "	Time needed: $date"
		now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
		echo "	Current time : $now"
		echo
		echo $randomfinal >> /dev/shm/passfound.txt
		read -n 1 -s -r -p "TRY PASSWORD and press any key to QUIT"
		echo
		rm "/dev/shm/crackerjackfile.txt" 2> /dev/null
		rm "/dev/shm/passfound.txt" 2> /dev/null
		echo
		break
		fi
	loop=$((loop+1))
done

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Software lead out."
	printf '\033[8;22;100t'		# will resize the window, 96 is minimum for exit box.
	echo
	echo "Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random random2=$random2 primeerror=$primeerror"
	echo
	echo "Finish... with numbers of actions : $part"
	echo "This script take $(( SECONDS - start )) seconds to complete."
	date=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
	echo "Time needed: $date"
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	echo
	echo "$now" >>/dev/shm/logs.txt
	echo "	Time needed : $date" >>/dev/shm/logs.txt
	echo "	Debug software : $me" >>/dev/shm/logs.txt
	echo "	Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random random2=$random2 automatic=$automatic primeerror=$primeerror" >>/dev/shm/logs.txt
	echo "	File (If any used) : $file" >>/dev/shm/logs.txt
	echo " " >>/dev/shm/logs.txt

echo -------------------------===== End of Bash ======-------------------------
## Exit, wait or auto-quit.

	if [ "$primeerror" -ge "1" ]; then
		echo
		echo "	${red}████████████████████████████████████████████${reset}"
		echo "	${red}██                                        ██${reset}"
		echo "	${red}██           ERROR ERROR ERROR            ██${reset}"
		echo "	${red}██                                        ██${reset}"
		echo "	${red}████████████████████████████████████████████${reset}"
		echo
		echo "Numbers of error(s) : $primeerror"
		echo
		functionsmallbar
		echo
		read -n 1 -s -r -p "Press ENTER key to Continue !"
		echo
	else
		echo
		echo "	${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo "	${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "	${green}██         NO errors detected.        ██${reset}	${blue}██       Time needed : $date       ██${reset}"
		echo "	${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "	${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo
	fi

	if [ "$noquit" -eq "1" ]; then
		echo
		echo "${blue}	█████████████████ NO exit activated ███████████████████${reset}"
		echo
		read -n 1 -s -r -p "Press ENTER key to exit !"
		echo
		exit
		fi

	if [ "$debug" -eq "1" ]; then
		debug
		echo "${blue}		█████ DEBUG WAIT | Program finish. █████${reset}"
		echo
		read -n 1 -s -r -p "Press ENTER key to continue !"
		echo
		fi

	echo
	echo "${green}	███████████████ Finish, quit in 3 seconds █████████████████${reset}"
	sleep 0.5
	echo
	functionsmallbar
	echo
	sleep 1
	exit

## -----===== Start of eula =====-----

	End-user license agreement (eula)

 	JUST DO WHAT THE F*** YOU WANT WITH THE PUBLIC LICENSE
 	
 	Version 3.1415926532 (January 2022)
 	
 	TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
    	
	Everyone is permitted to copy and distribute verbatim or modified copies of
 	this license document.
 	
 	As is customary and in compliance with current global and interplanetary
 	regulations, the author of these pages disclaims all liability for the
 	consequences of the advice given here, in particular in the event of partial
 	or total destruction of the material, Loss of rights to the manufacturer
 	warranty, electrocution, drowning, divorce, civil war, the effects of radiation
 	due to atomic fission, unexpected tax recalls or encounters with
 	extraterrestrial beings elsewhere.
 	
 	YOU MUST ACCEPT THESES TERMS OR NOTHING WILL HAPPEN.
 	
 	LostByteSoft no copyright or copyleft we are in the center.
 	
 	You can send your request and your Christmas wishes to this address:
 	
 		Père Noël
 		Pôle Nord, Canada
 		H0H 0H0

## -----===== End of file =====-----
