#!/bin/bash

AVG=$(ping -c 2 $1 |tail -1| awk '{print $4}' | cut -d '/' -f 2)


if (( $(bc <<< "$AVG > 1") ))
then
echo "============SERVER AVERAGE TIME: [$AVG] ms============"
echo "============SERVER IS SLOWLY ($1)============"
echo "Server ortalama ping zamanı: [$AVG] ms" >> rapor.txt 
echo "($1) Server hızı çok yavaş " >> rapor.txt
sh main.sh
elif (( $(bc <<< "$AVG < 1") ))
then
echo "============SERVER AVERAGE TIME: [$AVG] ms============"
echo "============SERVER SPEED IS NORMAL ($1)============"
echo "Server ortalama ping zamanı: [$AVG] ms" >> rapor.txt
echo "($1) Server hızı normal " >> rapor.txt
sh main.sh
fi

