#!/bin/bash

echo -n 'Host: '
read drachost

echo -n 'Username: '
read dracuser

echo -n 'Password: '
read -s dracpwd
echo

wget --cipher 'DEFAULT:!DH' --no-check-certificate https://10.10.0.40:443/software/avctKVM.jar -O avctKVM.jar

/usr/bin/java -cp avctKVM.jar -Djava.library.path=./lib com.avocent.idrac.kvm.Main ip="$drachost" kmport=5900 vport=5900 user="$dracuser" passwd="$dracpwd" apcp=1 version=2 vmprivilege=true "helpurl=https://$drachost:443/help/contents.html"