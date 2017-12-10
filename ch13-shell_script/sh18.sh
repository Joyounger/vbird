#!/bin/bash
# Program:
# 	user input dir name. I find the premission of files.
# history:
# 2017/12/09  first release
#PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
#export PATH


read -p "please input a dir: " dir
if [ "$dir" == "" -o ! -d "$dir" ]; then
	echo "the $dir is NOT exist in your system."
	exit 1
fi

cd $dir
for file in `ls $dir`
do
	perm=""
	test -r $file && perm="$perm readable"
	test -w $file && perm="$perm writable"
	test -x $file && perm="$perm exectuable"
	echo "the file $file's premission is $perm"
done