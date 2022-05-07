#!/bin/bash
FLAG_CHAR = "y"
MOUNT_DIR = "/mount"   #挂载目录


#备份/etc/apt/ 
sudo cp /etc/apt/sources.list  /etc/apt/sources_backup.list 
# 修改镜像源为18
sudo echo "deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse"  \
> /etc/apt/sources.list
if [ $? -ne 0 ];then
    echo "#######################"
    echo "change apt image fail\n"
    echo "#######################"
fi

sudo apt update

# 安装树形
sudo apt install tree
sudo apt install git
sudo apt install ifconfig
sudo apt install ssh
sudo apt install vim
#sudo apt install spacevim
#sudo apt install curl

#语言和工具
sudo apt install g++
sudo apt install make
sudo apt install gcc
#sudo apt install python3.6
#sudo apt install jdk
#node

#大件工具安装
#mysql
#redis 
#nginx

# 交叉编译工具
#sudo apt install gcc-arm-linux-gnueabi
#sudo apt install g++-arm-linux-gnueabi
#sudo apt install tftp-hpa tftpd-hpa
#sudo apt install nfs-kernel-server
#sudo apt install lib32ncurses5 lib32z1  #64位系统运行32位程序


# 复制对应的内容到工作目录
mkdir ~/work_table
# sudo cp /mnt ~/work_table

# 对内核的配置
