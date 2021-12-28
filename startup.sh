#!/bin/bash

source ./centerer.src
bash ./ascii/image.sh
TEMP=$(date +%A)
print_centered $(date +%A)
print_centered $(date +%B-%d-%Y)
echo ""

#Quote Generator
#Quotes can be changes by editing the text in /quotes
if [ $TEMP == 'Monday' ]; then
	source ./quotes/Monday
        print_centered "$MONDAY"
	print_centered "$MONDAY2"
        print_centered "$AUTHOR"


elif [ $TEMP == 'Tuesday' ]; then
	source ./quotes/Tuesday
        print_centered "$TUESDAY"
	print_centered "$TUESDAY2"
        print_centered "$AUTHOR"


elif [ $TEMP == 'Wednesday' ]; then
	source ./quotes/Wednesday
	print_centered "$WEDNESDAY"
	print_centered "$AUTHOR"


elif [ $TEMP == 'Thursday' ]; then
	source ./quotes/Thursday
        print_centered "$THURSDAY"
        print_centered "$AUTHOR"


elif [ $TEMP == 'Friday' ]; then
	source ./quotes/Friday
        print_centered "$FRIDAY"
        print_centered "$AUTHOR"


elif [ $TEMP == 'Saturday' ]; then
	source ./quotes/Saturday
        print_centered "$SATURDAY"
        print_centered "$AUTHOR"


elif [ $TEMP == 'Sunday' ]; then
	source ./quotes/Sunday
        print_centered "$SUNDAY"
        print_centered "$AUTHOR"
fi
echo ""

