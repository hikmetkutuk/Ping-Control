#!/bin/sh


server1="10.0.0.1"
server2="10.0.0.2"
server3="10.0.0.3"
server4="10.0.0.4"
server5="10.0.0.5"
server6="10.0.0.6"

echo  "|---------------------------------------------|"
echo  "|İletişim Halindeki Sunucular(IP)>|"
echo  "| 1-) $server1 > Veri Tabanı |"
echo  "| 2-) $server2 > DNS Sunucusu|"
echo  "| 3-) $server3 > Depolama|"
echo  "| 4-) $server4 > Veri Tabanı |"
echo  "| 5-) $server5 > Uygulama |"
echo  "| 6-) $server6 > Egitim |"
echo  "| 7-) Rapor dosyasını görüntüe |"
echo  "| 8-) ÇIKIŞ|"


echo -n "Kontrol Edeceğiniz Adres:"
read ip_adi

if [ $ip_adi -eq 1 ]
then
	(echo "------------------------------------------") >>rapor.txt
(echo $server1" Numaralı sunucu kontrolü raporu: " && date) >> rapor.txt
        echo  "|---------------------------------------------|"
	echo  "$server1 adresine Ping Atiliyor..."
	sh pingstatus.sh "$server1"
elif [ $ip_adi -eq 2 ]
then
(echo "------------------------------------------") >>rapor.txt
(echo $server2" Numaralı sunucu kontrolü raporu: " && date) >> rapor.txt
        echo  "|---------------------------------------------|"
	echo  "$server2 adresine Ping Atiliyor..."
	sh pingstatus.sh "$server2"
elif [ $ip_adi -eq 3 ]
then
(echo "------------------------------------------") >>rapor.txt
(echo $server3" Numaralı sunucu kontrolü raporu: " && date) >> rapor.txt
        echo  "|---------------------------------------------|"
	echo  "$server3 adresine Ping Atiliyor..."
	sh pingstatus.sh "$server3"
##DEVAM
elif [ $ip_adi -eq 4 ]
then
(echo "------------------------------------------") >>rapor.txt
(echo $server4" Numaralı sunucu kontrolü raporu: " && date) >> rapor.txt
        echo  "|---------------------------------------------|"
	echo  "$server4 adresine Ping Atiliyor..."
	sh pingstatus.sh "$server4"
elif [ $ip_adi -eq 5 ]
then
echo "------------------------------------------" >>rapor.txt
(echo $server5" Numaralı sunucu kontrolü raporu: " && date) >> rapor.txt
        echo  "|---------------------------------------------|"
	echo  "$server5 adresine Ping Atiliyor..."
	sh pingstatus.sh "$server5"
elif [ $ip_adi -eq 6 ]
then
echo "------------------------------------------" >>rapor.txt
(echo $server6" Numaralı sunucu kontrolü raporu: " && date) >> rapor.txt
        echo  "|---------------------------------------------|"
	echo  "$server6 adresine Ping Atiliyor..."
	sh pingstatus.sh "$server6"
elif [ $ip_adi -eq 7 ]
then
	cat rapor.txt
        sh main.sh

elif [ $ip_adi -eq 8 ]
then
	echo "Good Bye"
        exit 1
else
     clear
     echo "==================================================="
     echo "=================  HATALI SEÇİM  =================="
     echo "==================================================="
     echo "                        ||                         "
     echo "                        ||                         "
     echo "                        ||                         "
     echo "                        ||                         "
     sh main.sh
fi



