set -x

#pkill -9 clash # 先杀死之前的进程
nohup ./clash -d . > /dev/null 2>&1 & # 不生成文件
#ls # 显示文件


