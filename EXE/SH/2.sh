#!/bin/bash

# VARIABLES
echo "Type in a name" && read _USER
echo "Type in a directory" && read DIR
DATE=$(date +"%d/%m/%y")

# TITLE
echo "$(tput bold)These are the files from user $_USER at day $DATE:$(tput sgr0)"

# BODY
find $DIR -maxdepth 1 -type f

exit