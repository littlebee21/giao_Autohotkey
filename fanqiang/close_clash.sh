
#对代码进行清除
pkill -9 clash # 每次重启前建议先杀死之前的进程，因为设置不输出错误信息后需要严谨一些
#nohup ./clash -d . & # 这里nophup可以后台运行，&是继续执行其他命名，.是在当前目录下



lsof -i:7890 # 查看端口占用情况
ps -ef | grep clash
echo "if you see no clash , clash is clean"
