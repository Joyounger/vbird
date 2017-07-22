#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

if ["$1" == "hello"]; then
	echo "hello, how are you"
elif [ "$1" == "" ]; then
	echo "must inut parameters, for example> {$0 someword}"
else
	echo "the only parametes is 'hello', ex> {$0 hello}"
fi 