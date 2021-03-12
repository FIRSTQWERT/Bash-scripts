#!/bin/bash

input_file=~/money/money.txt
output_file=~/money/money_out_$(date +%Y-%m-%d).txt

echo "=============Input_file=========="

head $input_file

sed '1,4d' $input_file > $output_file 
echo "=============Output__file_1=========="
head $output_file

sed '0~7d' $output_file > $output_file
echo "=============Output__file_2=========="
head $output_file

#sed 'n;n;n;n;n;n;d;' $output_file >> $output_file

#sed 'n;n;n;n;n;n;d;' $output_file >> $output_file



echo "Exit!"
