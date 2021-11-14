#!/bin/bash

clear
source ~/Bash-Clean-motd/centerer.src
bash ~/Bash-Clean-motd/ascii/image.sh
TEMP=$(date +%A)
print_centered $(date +%A)
print_centered $(date +%B-%d-%Y)
echo ""

#Quote Generator
#Quotes can be changes by editing the text in ~/Ubuntu-Startup-Message/quotes
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


elif [ $TEMP == 'Wdnesday' ]; then
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
if [ "$(brew update)"=="Already up-to-date" ]; then
	echo ""
else
	print_centered " $(brew update)"
	print_centered "Would you like to upgrade?: [y/n]"
	read INPUT
	if [ $INPUT == 'y' ]; then
		brew upgrade
		print_centered "Fresh Brew straight from the tap!"
	fi
	if [ $INPUT == 'n' ]; then
		print_centered "Have a nice day!"
	fi
fi

