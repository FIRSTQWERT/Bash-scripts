#!/bin/bash

FILE_INPUT=$1
FILE_OUTPUT=$2

declare -a massive_of_numbers
declare -a array

index=0

while read line; do

    array[$index]="$line"
    index=$(($index+1))

done < $FILE_INPUT

for ((a=0; a < ${#array[*]}; a++))
do
    

    echo "       RECORD \"495*******\" AON \"${array[$a]}\" : \"&08\" REPEAT"
    echo "       RECORD \"498*******\" AON \"${array[$a]}\" : \"&08\" REPEAT"
    echo "       RECORD \"499*******\" AON \"${array[$a]}\" : \"&08\" REPEAT"
    echo "       RECORD \"**????????????????????\" AON \"${array[$a]}\" ERROR"

done > $FILE_OUTPUT
