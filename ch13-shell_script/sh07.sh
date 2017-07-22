#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "the script name is 	==> $0"
echo "total parameter number is ==> $#"
[ "$#" -lt 2 ] && echo "the number of parameter is < 2 " \
	&& exit 0
echo "your whole parameter is  ==> '$@'"
echo "the 1st parameter ==> $1 "
echo "the 2nd parameter ==> $2 "