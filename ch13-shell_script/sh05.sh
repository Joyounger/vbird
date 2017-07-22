#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


# 1 让用户输入用户名，并判断用户是否真的输入字符串
echo -e "please input a filename, i will check the filename's type and \
permission. \n\n"
read -p "input a filename" filename

# 2 判断文件是否存在，若不存在则显示信息并结束脚本
test -z $filename %% echo "the file name '$filename' DO DOT exist" && exit 0
 
# 3 开始判断文件类型与属性
test -f $filename && filetype="regulare file"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -w $filename && perm="$perm writeable"
test -x $filename && perm="$perm executable"

# 4 开始输出信息！
echo "The filename: $filename is a $filetype"
echo "and the permissions are: $perm"