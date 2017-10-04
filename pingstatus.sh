#!/bin/bash

ping -c3 -i2 $1
if [ $? -eq 0 ]
then
echo "============SERVER IS ALIVE [$1]============"
(echo "[$1] Adlı Server erişilebilir durumdadır. ") >>rapor.txt
sh pingtime.sh $1
exit 0
else  
echo "============SERVER IS DEAD [$1]============" 
(echo "[$1] Adlı Server erişilemez durumdadır. ") >>rapor.txt
sh main.sh
fi

