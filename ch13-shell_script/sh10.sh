#!/bin/bash
# Program:
# Using netstart and grep to detect WWW,SSH,FTP, and Mail services.
# history:
# 2017/12/09  first release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "now, I will detect your linux servicer's services!"
echo -e "the www, ftp, ssh, and mail will be detect!\n"

#$ netstat -tuln 
#
#活动连接
#
#  协议  本地地址          外部地址        状态           卸载状态
#
#  TCP    127.0.0.1:48303        127.0.0.1:49685        ESTABLISHED     InHost
#  TCP    127.0.0.1:49685        127.0.0.1:48303        ESTABLISHED     InHost
#  TCP    127.0.0.1:49688        127.0.0.1:49689        ESTABLISHED     InHost
#  TCP    127.0.0.1:49689        127.0.0.1:49688        ESTABLISHED     InHost
#  TCP    127.0.0.1:49690        127.0.0.1:49691        ESTABLISHED     InHost
#  TCP    127.0.0.1:49691        127.0.0.1:49690        ESTABLISHED     InHost
#  TCP    192.168.0.107:52620    111.62.245.121:443     CLOSE_WAIT      InHost
#  TCP    192.168.0.107:53556    23.50.16.106:443       ESTABLISHED     InHost
#  TCP    192.168.0.107:53744    111.221.29.147:443     ESTABLISHED     InHost
#  TCP    192.168.0.107:53750    218.241.149.77:80      ESTABLISHED     InHost
#  TCP    192.168.0.107:53963    218.241.149.65:80      CLOSE_WAIT      InHost
#
testing=$(netstat -tuln | grep ":80 ")  # 检测port 80
if [ $testing!="" ]; then
	echo "WWW is running in your system."
fi

testing=$(netstat -tuln | grep ":22 ")  # 检测port 22
if [ $testing!="" ]; then
	echo "SSH is running in your system."
fi

testing=$(netstat -tuln | grep ":21 ")  # 检测port 21
if [ $testing!="" ]; then
	echo "FTP is running in your system."
fi

testing=$(netstat -tuln | grep ":25 ")  # 检测port 25
if [ $testing!="" ]; then
	echo "Mail is running in your system."
fi




