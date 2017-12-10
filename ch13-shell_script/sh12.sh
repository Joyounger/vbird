#!/bin/bash
# Program:
# 	this script only accepts the following parameter: one, two or three.
# history:
# 2017/12/09  first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "this program will print your selection !"
#read -p "input your choice: " choice
# case $choice in
case $1 in
	"one")
		echo "your choice is ONE"
		;;
	"two")
		echo "your choice is TWO"
		;;
	"three")
		echo "your choice is THREE"
		;;
	*)
		echo "usage $0 {one|two|three}"
		;;
esac

