#!/bin/bash

source ~/Bash-Clean-motd/centerer.src
bash ~/Bash-Clean-motd/ascii/image.sh
TEMP=$(date +%A)
print_centered $(date +%A)
print_centered $(date +%B-%d-%Y)
echo ""

#Quote Generator
#Quotes can be changes by editing the text in ~/Bash-Clean-motd/quotes
if [ $TEMP == 'Monday' ]; then
	source ~/Bash-Clean-motd/quotes/Monday
        print_centered "$MONDAY"
	print_centered "$MONDAY2"
        print_centered "$AUTHOR"


elif [ $TEMP == 'Tuesday' ]; then
	source ~/Bash-Clean-motd/quotes/Tuesday
        print_centered "$TUESDAY"
	print_centered "$TUESDAY2"
        print_centered "$AUTHOR"


elif [ $TEMP == 'Wednesday' ]; then
	source ~/Bash-Clean-motd/quotes/Wednesday
	print_centered "$WEDNESDAY"
	print_centered "$AUTHOR"


elif [ $TEMP == 'Thursday' ]; then
	source ~/Bash-Clean-motd/quotes/Thursday
        print_centered "$THURSDAY"
        print_centered "$AUTHOR"


elif [ $TEMP == 'Friday' ]; then
	source ~/Bash-Clean-motd/quotes/Friday
        print_centered "$FRIDAY"
        print_centered "$AUTHOR"


elif [ $TEMP == 'Saturday' ]; then
	source ~/Bash-Clean-motd/quotes/Saturday
        print_centered "$SATURDAY"
        print_centered "$AUTHOR"


elif [ $TEMP == 'Sunday' ]; then
	source ~/Bash-Clean-motd/quotes/Sunday
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
