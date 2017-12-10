#!/bin/bash
# Program:
# you input your demobilization date, I calculate how many days
# before you demobilize
# history:
# 207/12/09  vbird frst release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "this program will try to calculate:"
echo "how many days before your demobilization date..."
read -p "please input your demobilization date(YYYYMMDD ex > 20090401): " date2

# 2 用正则表达式测试输入是否正确
date_d=$(echo $date2 | grep '[0-9]\{8\}') #看看是否有8个数字
if [ "$date_d" == "" ]; then
	echo "your input the wrong date format... "
	exit 1
fi

# 3 开始计算日期
declare -i date_time=`date --date="$date2" + %s`
declare -i date_now=`date + %s`
declare -i date_total_s=$(($date_dem-$date_now))
declare -i date_d=$(($date_total_s/60/60/24))

if [ "$date_total_s" lt "0" ]; then
	echo "you had been demobilization before: " $((-1*$date_d)) " ago"
else
	declare -i date_h=$(($(($date_total_s-$date_d*60*60*24))/60/60))
	echo "you will demobilize after $date_d days and $date_h hours."
fi


