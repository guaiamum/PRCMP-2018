#! /bin/bash

FILE=TopClientes.txt

# AWK NOT ALLOWED ON SPRINT
#awk -F";" '{ if($2 == "S" && $4~/^003/) print $1,$4; }' $FILE

egrep ';S;(.*;003)' $FILE
