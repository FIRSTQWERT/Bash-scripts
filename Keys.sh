#!/bin/bash

file=$'./keys.txt';
vezdehod_file=$'./vezdehod.txt';

echo Введите номер дома : 
read nomerdoma
echo Введите номер подъезда : 
read podezd

printf "[" > tempfile.tmp

while read LINE;
do

kvartira=$(echo $LINE | awk '{print $1}');
key1=$(echo $LINE | awk '{print $2}');
key2=$(echo $LINE | awk '{print $3}');

printf "{\"CardNo\":\"$key1\",\"UserID\":\"$kvartira\",\"UserName\":\"\",\"VTOPosition\":\"\",\"CardType\":0,\"CardStatus\":0},{\"CardNo\":\"$key2\",\"UserID\":\"$kvartira\",\"UserName\":\"\",\"VTOPosition\":\"\",\"CardType\":0,\"CardStatus\":0}," >> tempfile.tmp

done < $file

while read LINE;
do

printf "{\"CardNo\":\"$LINE\",\"UserID\":\"vezdehod\",\"UserName\":\"\",\"VTOPosition\":\"\",\"CardType\":0,\"CardStatus\":0}," >> tempfile.tmp

done < $vezdehod_file

cat tempfile.tmp | sed 's/,$//' > "nomer_"$nomerdoma"_""podezd_"$podezd".cadb"

printf "]" >> "nomer_"$nomerdoma"_""podezd_"$podezd".cadb"
