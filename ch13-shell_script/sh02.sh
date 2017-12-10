#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "please input your first name:" firstname		#提示用户输入
read -p "please input your last name:" lastname			#
echo -e "\n your full name is : $firstname $lastname"	#结果由屏幕输出