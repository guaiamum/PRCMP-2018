#!/bin/bash

FILE=TopClientes.txt

# Iterating over arguments
for arg in "$@"
do
    count=$(echo $arg | wc -c)
    echo $count
    if [ $count -eq 2 ]; then
        echo "IS 2"
    else
        echo "not 2"
    fi

done

exit 0