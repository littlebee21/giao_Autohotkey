#!/bin/sh
#nfs 安装
sudo apt-get install nfs-kernel-server

#编辑服务端配置文件----/etc/exports
#sudo vim  /etc/exports
#在其内添加一行，内容如下：
sudo echo "/opt/4412/rootfs *(rw,sync,no_root_squash,no_subtree_check)" >> /etc/exports

#创建挂载点目录并修改挂载点目录的访问权限
sudo mkdir /opt/4412/rootfs -p
sudo chmod 777 /opt/4412/rootfs

#启动NFS服务端（每一次修改/etc/exports都要重启nfs）
sudo service nfs-kernel-server restart
sudo service rpcbind restart

#验证安装是否正确
#在/opt/4412/rootfs下创建一个空文件
sudo touch /opt/4412/rootfs/test
sudo  mount 127.0.0.1:/opt/4412/rootfs   /mnt
#127.0.0.1（这是被挂目录的主机IP）     
#ubuntu上NFS服务器上被挂目录的绝对路径/opt/4412/rootfs
#/mnt（挂载的目的地）

ls -l /mnt 

echo "如果有test的话就说明ok了"
echo "#sudo rm /mnt/test"
echo "#sudo umount /mnt #卸掉挂载的目录"
