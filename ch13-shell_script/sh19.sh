#!/bin/bash
# Program:
# 	try to calculate 1+2+...+$(your_input)
# history:
# 2017/12/09  first release
#PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
#export PATH

read -p "please input a number: " nu

sum=0
for ((i=0; i < $nu; i=i+1))
do
	sum=$(($sum+$i))
done

echo $sum


