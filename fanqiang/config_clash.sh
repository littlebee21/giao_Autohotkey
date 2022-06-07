set -x

#./clash-linux-amd64-v1.10.6

#sudo mkdir /home/vagrant/.config/clash
cd /home/vagrant/.config/clash # 进入配置文件目录


cp /home/vagrant/clash-linux-amd64-v1.10.6 /home/vagrant/.config/clash/clash # 复制clash文件

wget -O Country.mmdb https://www.sub-speeder.com/client-download/Country.mmdb # 下载文件

#获取config 配置文件
#方法1
#wget -O config.yaml [https://sub.juzicloud.vip/link/1cOAOb9tnTXKm1Ij?clash=1] # 下载到本地
#方法2
cp ./clash/config.yaml 
