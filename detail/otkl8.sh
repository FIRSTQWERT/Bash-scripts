#!/bin/bash

file=$'/root/detail/otkl8.txt';
#numbers=$(cat $file | cut -c 2- | sed s/.*/\''&'\',/ | tr -d '\n' | sed 's/.$//');

#With first 7
#numbers=$(cat $file | cut -c 2- );

#Without first 7
#numbers=$(cat $file | sed s/.*/\''&'\',/ | tr -d '\n' | sed 's/.$//');

while read numbers; do

line=$(echo $numbers |cut -c 2-)
 
printf "        RECORD \"495*******\" AON \"$line\" : \"&08\" REPEAT\n"
printf "        RECORD \"498*******\" AON \"$line\" : \"&08\" REPEAT\n"
printf "        RECORD \"499*******\" AON \"$line\" : \"&08\" REPEAT\n"
printf "        RECORD \"**????????????????????\" AON \"$line\" ERROR\n"

done < $file
