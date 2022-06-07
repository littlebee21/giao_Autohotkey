set -x

#pkill -9 clash # 先杀死之前的进程
nohup ${HOME}/.config/clash/clash -d ${HOME}/.config/clash/ > /dev/null 2>&1 & # 不生成文件

#cd /home/vagrant/.config/clash/

#nohup ./clash -d . > /dev/null 2>&1 &


#ls # 显示文件


