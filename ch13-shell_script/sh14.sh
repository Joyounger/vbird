#!/bin/bash
# Program:
# 	use loop to calculate "1+2+...+100" result
# history:
# 2017/12/09  first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

sum=0
i=0
while [ "$i" != "100" ]
do
	i=$(($i+1))
	sum=$(($sum+$i))
done

echo "the result of '1+2+...+100' is ==> $sum"

