#!/bin/bash
# Program:
# 	using  for loop to print 3 animal
# history:
# 2017/12/09  first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

for animal in dog cat elephant
do
	echo "there are ${animal}s..."
done
