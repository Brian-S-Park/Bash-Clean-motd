#!/bin/bash

#Centering Function
function print_centered {
     [[ $# == 0 ]] && return 1

     declare -i TERM_COLS="$(tput cols)"
     declare -i str_len="${#1}"
     [[ $str_len -ge $TERM_COLS ]] && {
          echo "$1";
          return 0;
     }

     declare -i filler_len="$(( (TERM_COLS - str_len) / 2 ))"
     [[ $# -ge 2 ]] && ch="${2:0:1}" || ch=" "
     filler=""
     for (( i = 0; i < filler_len; i++ )); do
          filler="${filler}${ch}"
     done

     printf "%s%s%s" "$filler" "$1" "$filler"
     [[ $(( (TERM_COLS - str_len) % 2 )) -ne 0 ]] && printf "%s" "${ch}"
     printf "\n"

     return 0
}

bash ~/script/UbuntuStartMessage/ascii/image.sh
TEMP=$(date +%A)
print_centered $(date +%A)
print_centered $(date +%B-%d-%Y)
echo ""

#Quote Generator
#Quotes can be changes by editing the text in ~/Ubuntu-Startup-Message/quotes
if [ $TEMP = 'Monday' ]; then
	source ~/script/UbuntuStartMessage/quotes/Monday
        print_centered "$MONDAY"
	print_centered "$MONDAY2"
        print_centered "$AUTHOR"


elif [ $TEMP = 'Tuesday' ]; then
	source ~/script/UbuntuStartMessage/quotes/Tuesday
        print_centered "$TUESDAY"
	print_centered "$TUESDAY2"
        print_centered "$AUTHOR"


elif [ $TEMP = 'Wednesday' ]; then
	source ~/script/UbuntuStartMessage/quotes/Wednesday
	print_centered "$WEDNESDAY"
	print_centered "$AUTHOR"


elif [ $TEMP = 'Thursday' ]; then
	source ~/script/UbuntuStartMessage/quotes/Thursday
        print_centered "$THURSDAY"
        print_centered "$AUTHOR"


elif [ $TEMP = 'Friday' ]; then
	source ~/script/UbuntuStartMessage/quotes/Friday
        print_centered "$FRIDAY"
        print_centered "$AUTHOR"


elif [ $TEMP = 'Saturday' ]; then
	source ~/script/UbuntuStartMessage/quotes/Saturday
        print_centered "$SATURDAY"
        print_centered "$AUTHOR"


elif [ $TEMP = 'Sunday' ]; then
	source ~/script/UbuntuStartMessage/quotes/Sunday
        print_centered "$SUNDAY"
        print_centered "$AUTHOR"
fi
echo ""
#Checks if there is an update available. If there is no update avaiable, then it returns nothing to keep a clean look.
UPGRADES=$(/usr/lib/update-notifier/apt-check 2>&1 |  cut -d ';' -f 2)
SECURITY=$(/usr/lib/update-notifier/apt-check 2>&1 | cut -d ';' -f 1)
if [ $UPGRADES -ge 1 ]; then
	print_centered "Available updates: $(/usr/lib/update-notifier/apt-check 2>&1 | cut -d ';' -f 2)"
fi

if [ $SECURITY -ge 1 ]; then
	print_centered "Security updates: $(/usr/lib/update-notifier/apt-check 2>&1 | cut -d ';' -f 1)"
fi
