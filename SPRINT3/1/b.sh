#!/bin/bash

FILE=TopClientes.txt

# Iterating over arguments
for arg in "$@"
do
    grep -i $arg$ $FILE | echo "Total of clients for $arg: " $(gwc -l)
done

exit 0