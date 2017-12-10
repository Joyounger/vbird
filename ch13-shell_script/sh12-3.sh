#!/bin/bash
# Program:
# 	use function to repeat information.
# history:
# 2017/12/09  first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

function printit() {
	echo -n "your choice is $1"
}

echo "this program will print your selection !"

case $1 in
	"one")
		printit 1
		;;
	"two")
		printit 2
		;;
	"three")
		printit 3
		;;
	*)
		echo "usage $0 {one|two|three}"
		;;
esac