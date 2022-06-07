user_home=${HOME}
cd ~

#wget https://github.com/Dreamacro/clash/releases/download/v1.10.6/clash-linux-amd64-v1.10.6.gz


#gzip -d clash-linux-amd64-v1.10.6.gz 
#sudo chmod +x clash-linux-amd64-v1.10.6



#echo "xuanze yes"
#timeout 1 ./clash-linux-amd64-v1.10.6 || true
#./clash-linux-amd64-v1.10.6 & { sleep 1; kill $! & }
sudo mkdir .config
sudo mkdir .config/clash/


#cp clash-linux-amd64-v1.10.6  ${HOME}/.config/clash/clash
cd -
sudo cp ./clash/clash  ${user_home}/.config/clash/clash

