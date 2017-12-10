#!/bin/bash
# Program:
# 	user input dir name. I find the premission of files.
# history:
# 2017/12/09  first release
#PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
#export PATH


read -p "please input a dir: " dir

cd $dir
for file in `ls $dir`
do
	ls -l $file
done