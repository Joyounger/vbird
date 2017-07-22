#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


#1 让用户输入文件名，并取得filename这个变量：
echo -e "I will use 'touch' command to create 3 files"
read -p "please input your filename:" fileuser

#2 为了避免用户随意按enter，利用变量功能分析文件名是否有设置
filename=${fileuser:-"filename"}  #判断是否配置文件名

#3 利用date命令取得文件名
date1=$(date --date='2 days ago' +%Y%m%d)	#前两天的日期
date2=$(date --date='1 days ago' +%Y%m%d)	#前一天的
date3=$(date +%Y%m%d)
file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

# 4 创建文件
touch "$file1"
touch "$file2"
touch "$file3"