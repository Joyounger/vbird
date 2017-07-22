#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "please input y or n : " yn

if [ "$yn" == "y" ] || [ "$yn" == "Y" ]; then
	echo "ok, continue"
	exit 0
fi
if [ "$yn" == "n" ] || [ "$yn" == "N" ]; then
	echo "ok, continue"
	exit 0
fi

echo "i don't know how to choice" && exit 0