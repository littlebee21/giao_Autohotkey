;scp
;结构就是: 命令 + 排除 + 真实 + 路径 
;发送命令
;参考 https://blog.csdn.net/GX_1_11_real/article/details/94739716
:*:scp,::rsync -av -e ssh


;需要忽略的内容
:*:eg,::--exclude='.git' --exclude='node_modules'




;发送内容到服务器
:*:svuef,::rsync -av -e ssh --exclude='node_modules'  ~/openbmc/build/workspace/sources/webui-vue/ gaozhonglin@192.168.0.203:~/openbmc/build/workspace/sources/webui-vue/

:*:sbmcwebf,::rsync -av ~/openbmc/build/workspace/sources/bmcweb/ gaozhonglin@192.168.0.203:~/openbmc/build/workspace/sources/bmcweb/

:*:sopenf,::rsync -av -e ssh --exclude='build' ~/openbmc/ gaozhonglin@192.168.0.203:~/openbmc/

:*:shwmonf,::rsync -av  ~/openbmc/build/workspace/sources/phosphor-hwmon/ gaozhonglin@192.168.0.203:~/openbmc/build/workspace/sources/phosphor-hwmon/



;发送内容到qemu
:*:svueq,::scp -P 2222 -r ~/openbmc/build/workspace/sources/webui-vue/oe-workdir/image/*  root@192.168.0.131:/
:*:sbmcwebq,::scp -P 2222 -r ~/openbmc/build/workspace/sources/bmcweb/oe-workdir/image/*  root@192.168.0.131:/


