#!/bin/bash
# Program:
# 	use ping cmd to check the network's PC state.
# history:
# 2017/12/09  first release
#PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
#export PATH

network="192.168.0."
for sitenu in $(seq 1 255) 	# seq为连续缩写之意
do
	#ping $network$sitenu
	ping -c 1 -w 1 $network$sitenu &> /dev/null && result=0 || result=1 	#ping执行成功就执行result=0,执行失败就执行result=1
	if [ "$result" == 0 ]; then
		echo "$server $network$sitenu is UP"
	elif [ "$result" == 1 ]; then
		echo "$server $network$sitenu is DOWN"
	fi
done