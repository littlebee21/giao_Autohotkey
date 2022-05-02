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
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse" | sudo tee /etc/apt/sources.list
if [ $? -ne 0 ];then
    echo "#######################"
    echo "change apt image fail\n"
    echo "#######################"
fi


# 安装树形
sudo apt install tree
sudo apt install gcc
sudo apt install git
sudo apt install vim
sudo apt install g++
sudo apt install make


# 交叉编译工具
#sudo apt install tftp-hpa tftpd-hpa
#sudo apt install nfs-kernel-server
sudo apt install lib32ncurses5 lib32z1


# 复制对应的内容到工作目录
mkdir ~/work_table
sudo cp /mount 

# 对内核的配置
