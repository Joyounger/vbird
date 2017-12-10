#!/bin/bash
# Program:
# 	use function to repeat information.
# history:
# 2017/12/09  first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


function printit() {
	echo -n "your choice is "  # 加上-n可以不断行继续在同一行显示
}

echo "this program will print your selection !"

case $1 in
	"one")
		printit; echo $1 | tr 'a-z' 'A-Z' 	# 将参数做大小写转换!
		;;
	"two")
		printit; echo $1 | tr 'a-z' 'A-Z' 
		;;
	"three")
		printit; echo $1 | tr 'a-z' 'A-Z' 
		;;
	*)
		echo "usage $0 {one|two|three}"
		;;
esac