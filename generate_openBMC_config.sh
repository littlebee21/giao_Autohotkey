echo "method1  
export TEMPLATECONF=meta-ibm/meta-romulus/conf  
. openbmc-env  "



echo "method2 
. setup <machine> "


echo "如果想换一个编译配置，执行如下命令删除build/conf文件夹。
rm -rf build/conf"


echo "建议修改配置文件，提高编译速度
vi conf/loacl.conf"


echo "想要编译需要进入build目录"


