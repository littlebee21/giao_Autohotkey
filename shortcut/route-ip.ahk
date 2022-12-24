;ip地址编号
:*:31130,::192.168.31.130
:*:31131,::192.168.31.131
:*:127,::127.0.0.1
:*:0130,::192.168.0.130
:*:0131,::192.168.0.131
:*:203,::192.168.0.203:5000


;服务器地址
:*:fdz,::gaozhonglin@192.168.0.203:~
:*:fdzs,::gaozhonglin@192.168.0.203:~/openbmc/build/workspace/sources/

:*:vdz,::vagrant@192.168.0.131:
:*:fdzs,::vagrant@192.168.0.131:~/openbmc/build/workspace/sources/
:*:vdzp,::vagrant@192.168.0.131:~/post/


;qemu虚拟机的地址
;scp -P 2222 1.txt root@192.168.31.131:/
:*:scpp,::scp -P 2222
:*:qemu31,::root@192.168.31.131:/
:*:qemu0,::root@192.168.0.131:/


;测试虚拟机地址
:*:cdz,::vagrant@192.168.0.134:
:*:cdzb,::vagrant@192.168.0.134:~/burn/


:*:bssh,::ssh -p 22 vagrant@
:*:fssh,::ssh gaozhonglin@192.168.0.203
:*:cssh,::ssh vagrant@192.168.0.134
:*:nssh,::ssh gao@192.168.31.231

:*:yfssh,::ssh -p 6000 gaozhonglin@121.40.128.13
