#!/bin/bash
# Program:
# 	show "hello" from $1... by using case ..esac
# history:
# 2017/12/09  first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

case $1 in
	"hello" )
		echo "hello, how are you ?"
		;;
	"")
		echo "you must input parameters, ex> ($0 someword)"
	*)		#相当于通配符, 0-无穷多个任意字符之意!
		echo "usage $0 {hello}"
		;;
esac

