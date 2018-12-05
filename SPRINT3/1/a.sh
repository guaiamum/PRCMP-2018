#!/bin/bash

FILE=TopClientes.txt
OUTPUTFILE=output.txt
regex=";S;(.*;003)"

while read line; do
    if [[ $line =~ $regex ]]; then
        echo $line | cut -d";" -f1,4 >> $OUTPUTFILE;
        # for debugging uncomment next line
        # echo $line | cut -d";" -f1,4;
    fi
done < $FILE
    
exit 0;