#!/bin/bash
#create /root/fsb.log and mail

logfile="/root/fsb/fsb.log"
mailfile="/root/fsb/fsbmail.txt"
email="firstqwert@gmail.com"
folder=$(date +"%Y-%m-%d");


date +"Date %Y-%m-%d %H:%M"  >> $logfile
echo "=====================" >> $logfile
screen -ls  >> $logfile
echo "=====================" >> $logfile
df -h  >> $logfile
echo "=====================" >> $logfile
du -h /home/pered  >> $logfile
echo "======== Content of folder $folder ========" >> $logfile
ls /home/pered/$folder  >> $logfile

#echo "=========================" >> $logfile
#echo "=========================" >> $logfile

echo "***************************************** END *****************************************" >> $logfile



#du -h /home/185 | mailx -s "FSB FTP Status" $email
#du -h /home/pered/ | sort -k2.1 -r | mailx -v -A gmail -s "FSB FTP Status" $email

df -h > $mailfile
echo "==============================================================================" >> $mailfile
du -h /home/pered/ | sort -k2.1 -r >> $mailfile
cat $mailfile | mailx -v gmail -s "FSB FTP Status" $email
