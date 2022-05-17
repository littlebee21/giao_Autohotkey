#!/bin/sh

#TFTP客户端: tftp-hpa
#FTP服务端: tftpd-hpa
#网络守护进程服务程序: xinetd

sudo apt install tftp-hpa
sudo apt install tftpd-hpa
sudo apt install xinetd


sudo mkdir /tftpboot #创建tftp服务端共享目录
sudo chmod -R 777 /tftpboot #修改目录权限


#修改服务端配置文件---tftpd-hpa
#sudo vim /etc/default/tftpd-hpa
#文件内容如下：
#RUN_DAEMON="no"
#OPTIONS="-s /tftpboot -c -p -U tftpd"
sudo cp /etc/default/tftpd-hpa   /etc/default/tftpd-hpa-back
sudo echo  "TFTP_USERNAME=\"tftp\"
TFTP_DIRECTORY=\"/tftpboot\"  
TFTP_ADDRESS=\"0.0.0.0:69\"
TFTP_OPTIONS=\"-l -c -s\" " \
 > /etc/default/tftpd-hpa




 #测试
 touch /tftpboot/hello.txt
 sudo echo "hello" >> /tftpd/hello.txt


#运行服务端
sudo service tftpd-hpa restart

 #查看脚本的内容确定下面的测试内容
 cat ./install_tftp.sh

 cd ~
 tftp 127.0.0.1
 #tftp>get hello.txt
 #tftp>q
 #cat hello.txt #查看xxx内容为上面输入的内容则表示安装成功，否则安装过程有问题
