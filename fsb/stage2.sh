#!/bin/bash
currentdate=$(date +"%d%m%Y");
folder=$(date +"%Y-%m-%d");
folderonfsb=$'pered'; #need to create this folder on /home/folderonfsb

/usr/bin/killall tcpdump;


#mkdir /home/185/$folder; /usr/bin/screen -dmS for_FSB /usr/sbin/tcpdump -n -i eth0 host 185.36.63.79 -Z root -s 0 -C 100 -w /home/185/$folder/$currentdate-185.36.63.79.cap

#mkdir /home/$folderonfsb/$folder; /usr/bin/screen -dmS for_FSB /usr/sbin/tcpdump -n -i eth0.190 -Z root -s 0 -C 100 -w /home/$folderonfsb/$folder/$currentdate-achmat2kv191.cap

mkdir /home/$folderonfsb/$folder; /usr/bin/screen -dmS for_FSB /usr/sbin/tcpdump -n -i eth0.2001 -Z root -s 0 -C 100 -w /home/$folderonfsb/$folder/$currentdate-achmat2kv104.cap

