#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


echo -e "you should input 2 numbers, i will cross them \n"
read -p "first number:" firstnu
read -p "second number:" secnu
total=$(($firstnu*$secnu))
echo -e "\n $firstnu * $secnu is ==> $total"