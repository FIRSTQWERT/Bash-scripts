#!/bin/bash

name_dir=$(date +"%Y-%m-%d" -d "-5 day"); #4 day time to live of folder

rm -r -f /home/172.31.114.253/pered/$name_dir

rm -r -f /home/pered/$name_dir
