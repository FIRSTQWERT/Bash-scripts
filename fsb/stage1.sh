#!/bin/bash
currentdate=$(date +"%Y-%m-%d %H:%M");
folder=$(date +"%Y-%m-%d" -d "-1 day");
folderonfsb=$'pered';

HOST=''
USER=''
PASSWD=''


cd /home/pered/

if [ "$(ls -A $folder)" ]; then
     echo "$currentdate $folder is not Empty" 
else
    echo "$currentdate $folder is Empty"
	> $folder/no_traffic.cap
	
fi

cd /home/

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
mkdir pered/$folder
prompt
mput pered/$folder/*.cap*
quit
END_SCRIPT
exit 0

