;scp
;结构就是: 命令 + 排除 + 真实 + 路径 
;发送命令
;参考 https://blog.csdn.net/GX_1_11_real/article/details/94739716
:*:scp,::rsync -av -e ssh


;需要忽略的内容
:*:eg,::--exclude='.git' --exclude='node_modules'




;通过发送的方式，可以直接将分支也都传送过去，
:*:svuef,::rsync -av -e ssh --exclude='node_modules'  ~/openbmc/build/workspace/sources/webui-vue/ gaozhonglin@192.168.0.203:~/openbmc/build/workspace/sources/webui-vue/