1，如果订阅的链接 过期
	个人的订阅链接到6月10号
	10号之后就不能进行上网了
	请手动的进行订阅配置文件的下载，然后手动的拷贝到对应的位置，


2, 默认的安装路径：
~/.config/clash/   存放clash的所有需求文件




3, 使用流程：
	首次使用：  prepare_fanqiang.sh
	打开代理工具;   install_fanqiang.sh
	查看代理状态：  get_fannqiang.sh
		如果 system github clash 都显示为有状态
		可以明显通过install和uninstall看出状态区别
	关闭代理工具;   uninstall_fanqiang.sh


强制：
强制使用 source ***.sh 的方式，因为脚本内部涉及环境变量的修改
强制使用 在本文件夹内进行脚本的执行，内部使用相对路径， 受到执行位置的限制
	prepare_fanqiang.sh 必须
	install_fanqiang 不必须
	get_fangqiang.sh 不必须
	uninstall_fanqiang.sh 不必须


4, 测试方法：
curl www.google.com /
wget www.google.com 

