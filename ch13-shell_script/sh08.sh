#!/bin/bash
# Program:
# 	program shows the effect of shift function.
# history:
# 2009/02/17 vbird first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


echo "total parameter number is ==> $#"
echo "your whole parameter is ==> '$@'"
shift # 进行第一次"一个变量的shift"
echo "total parameter number is ==> $#"
echo "your whole parameter is ==> '$@'"
shift 3 # 进行第2次"3个变量的shift"
echo "total parameter number is ==> $#"
echo "your whole parameter is ==> '$@'"

#$ sh sh08.sh one two three four five six
#total parameter number is ==> 6
#your whole parameter is ==> 'one two three four five six'
#total parameter number is ==> 5
#your whole parameter is ==> 'two three four five six'
#total parameter number is ==> 2
#your whole parameter is ==> 'five six'
