#!/bin/bash

currentdate=$(date +"%Y-%m-%d %H:%M");
folder=$(date +"%Y-%m-%d" -d "-1 day");
folderonfsb=$'pered';

HOST='172.31.114.253'
USER='anonymous'
PASSWD='anonymous'


mkdir /home/pered/$folder

cd /home/

wget -r ftp://anonymous:anonymous@172.31.114.253/pered/$folder

cp /home/172.31.114.253/pered/$folder/* /home/pered/$folder/

exit 0

