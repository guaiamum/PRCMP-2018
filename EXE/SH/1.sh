#!/bin/bash

DATE=$(date +"%d/%m/%y")
frase="$(tput bold)These are the files from user $USER at day $DATE:$(tput sgr0)"
echo $frase
find ~ -maxdepth 1 -type f
exit