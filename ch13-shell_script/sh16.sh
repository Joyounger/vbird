#!/bin/bash
# Program:
# 	use id,finger cmd to check system account's information.
# history:
# 2017/12/09  first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

users=$(cut -d ':' -f 1 /etc/passwd)
for username in
do
	id $username
	finger $username
done


