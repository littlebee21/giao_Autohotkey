usr_home=${HOME}
set -x

#./clash-linux-amd64-v1.10.6

#sudo mkdir /home/vagrant/.config/clash
#cd ${HOME}/.config/clash # 进入配置文件目录

#下载配置文件读取的工具
#wget -O Country.mmdb https://www.sub-speeder.com/client-download/Country.mmdb # 下载文件

#获取config 配置文件
#方法1 网络下载不稳定
#wget -O config.yaml [https://sub.juzicloud.vip/link/1cOAOb9tnTXKm1Ij?clash=1] # 下载到本地
#方法2 手动下载，然后进行拷贝


#cd -
sudo cp ./clash/Country.mmdb  ${usr_home}/.config/clash/Country.mmdb
sudo cp ./clash/config.yaml ${usr_home}/.config/clash/config.yaml


sudo chmod 777 ${usr_home}/.config/clash/
