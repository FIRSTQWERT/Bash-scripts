#!/bin/bash

file=$'/root/detail/detail.txt';


#With first 7
numbers=$(cat $file | cut -c 2- | sed s/.*/\''&'\',/ | tr -d '\n' | sed 's/.$//');

#Without first 7
#numbers=$(cat $file | sed s/.*/\''&'\',/ | tr -d '\n' | sed 's/.$//');

printf "select src,dst,dir,calldate,count,count_minutes,sum,sum_minutes from bill where operator=0 and direction='outgoing' and src IN ($numbers);\n"


#select src,dst,dir,calldate,count,count_minutes,sum,sum_minutes from bill where operator=0 and direction='outgoing' and src IN (' 4994264684',' 4958032864','4958032570','4958032185','4958033926','4958034095','4958034399');

