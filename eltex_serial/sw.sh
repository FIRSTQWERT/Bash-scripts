#!/bin/sh

#killall sw.sh
cat /root/eltex_serial/sw.txt | while read line
do
echo "$line"
expect /root/eltex_serial/sw.exp $line > 123
done
echo
