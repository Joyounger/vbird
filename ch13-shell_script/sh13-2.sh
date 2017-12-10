#!/bin/bash
# Program:
# 	repeat information until user input correct number
# history:
# 2017/12/09  first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

until [ "$yn" == "yes"  -o  "$yn" == "YES" ]
do
	read -p "please input yes/YES to stop this program: " yn
done

echo "OK! you input the correct answer."