#!/bin/bash
currentdate=$(date +"%Y-%m-%d %H:%M");
folder=$(date +"%Y-%m-%d" -d "-1 day");


HOST='firstqwert.square7.ch'
USER='firstqwert'
PASSWD='qwert615199'

#cd /home/185/

#if [ "$(ls -A $folder)" ]; then
#     echo "$currentdate $folder is not Empty"
#else
#    echo "$currentdate $folder is Empty"
#        > $folder/no_traffic.cap

#fi

cd /home/

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
mkdir 185/123
prompt
mput 123.cap
quit

END_SCRIPT 
exit 0

