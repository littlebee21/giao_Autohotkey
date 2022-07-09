;前端
:*:ngs,::ng serve --open --host 192.168.0.130
:*:ncheck,::–no-check-certificate


;openbmc相关
:*:exportbmc1,::export TEMPLATECONF=meta-ibm/meta-palmetto/conf 
:*:exportbmc2,::. openbmc-env
:*:bbmc,:: bitbake obmc-phosphor-image
:*:ebmc,::export TEMPLATECONF=meta-ibm/meta-palmetto/conf  && . openbmc-env

;网络
:*:ssh,::ssh -p 22 vagrant@
:*:proxy,::export all_proxy=socks5://127.0.0.1:7890
:*:unproxy,::unset all_proxy

:*:sfhq,::Set-NetFirewallProfile -Enabled False        ;powershell命令
:*:rfhq,::NetSh Advfirewall set allprofiles state on    ;powershell命令
:*:swfhq,::ufw disable

:*:rdk,::iptables -I INPUT -p tcp --dport 8080 -j ACCEPT    ;开放端口
:*:gdk,::netstat -ntlp

;文件相关
:*:rms,::
    send, {raw}rm -rf $(find . -name ".*.swp" -print)
    return

;虚拟机相关
:*:vm,::sudo /sbin/mount.vboxsf work_mount ~/work_mount/


;路径切换
:*:tr1,::tree -L 1
:*:tr2,::tree -L 2
:*:tr3,::tree -L 3 
:*:cdh,::cd ~ && ls
:*:..,::../../


;vim下的命令
:*:gp,::Grep
:*:nl,::nohl
:*:fl,::Files
:*:th,::%s/a/b/g
:*:sl,::    ;执行shell命令
    send,{raw}!command
    return 






