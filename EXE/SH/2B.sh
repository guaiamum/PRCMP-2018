#!/bin/bash

# VARIABLES
_USER=${1:-$USER}
DIR=${2:-$HOME}
DATE=$(date +"%d/%m/%y")

# TITLE
echo "$(tput bold)These are the files from user $_USER at day $DATE:$(tput sgr0)"

# BODY
find $DIR -maxdepth 1 -type f

exit