#!/bin/bash

FILE=TopClientes.txt

if [[ $# -eq 0 ]]; then
    echo "At least one product should be passed as parameter!"
    exit 0
fi

# Iterating over arguments
for arg in "$@"
do
    grep -i $arg$ $FILE | echo "Total of clients for $arg: " $(gwc -l)
done

exit 0