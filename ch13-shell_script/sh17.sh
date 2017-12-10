#!/bin/bash
# Program:
# 	use ping cmd to check the network's PC state.
# history:
# 2017/12/09  first release
#PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
#export PATH

network="192.168.1."
for sitenu in $(seq 1 100)
do
	ping $network$sitenu
done