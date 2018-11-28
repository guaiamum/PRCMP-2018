#!/bin/bash

# FILE=TopClientes.txt

# while read line; do
#     if [[ $line =~ $regex ]]; then
#         echo $line| cut -d";" -f4 >> $OUTPUTFILE;
#     fi
# done < $FILE

# exit 0;

function isValid () {
    arr=(["0033"]="Banco cenas" ["key2"]=val2 ["key3"]=val3 )

    for key in ${!arr[@]}; do
        echo $key 
    done
}

isValid
