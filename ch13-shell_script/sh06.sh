#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "please input y or n : " yn
[ "$yn" == "y" -o "$yn" == "Y" ] && echo "ok,continue"&& exit 0
[ "$yn" == "n" -o "$yn" == "N" ] && echo "interrupt"&& exit 0
echo "i don't know how to choice" && exit 0