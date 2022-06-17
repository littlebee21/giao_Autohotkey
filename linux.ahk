;前端
:*:ngs,::ng serve --open --host 192.168.0.130
:*:ncheck,::–no-check-certificate


;openbmc相关
:*:exportbmc1,::export TEMPLATECONF=meta-ibm/meta-palmetto/conf 
:*:exportbmc2,::. openbmc-env
:*:bitbakebmc,:: bitbake obmc-phosphor-image

;网络
:*:proxy,::export all_proxy=socks5://127.0.0.1:7890
:*:unproxy,::unset all_proxy

:*:sfhq,::Set-NetFirewallProfile -Enabled False        ;powershell命令
:*:rfhq,::NetSh Advfirewall set allprofiles state on    ;powershell命令
:*:swfhq,::ufw disable

:*:rdk,::iptables -I INPUT -p tcp --dport 8080 -j ACCEPT    ;开放端口
:*:gdk,::netstat -ntlp


;虚拟机相关
:*:vm,::sudo /sbin/mount.vboxsf work_mount ~/work_mount/


;路径切换
:*:tr1,::tree -L 1
:*:tr2,::tree -L 2
:*:tr3,::tree -L 3 
:*:hisf,::
	send, {raw}$(fc -l -n|fzf)
	return

:*:lf,::       ;查看文件夹的大小
	send, {raw}'du -h --max-depth=1 ./'
	return 

:*:vim ,::      ;编辑搜索的内容
    send, {raw}vim ${FP}
    return
:*:cd ,::        
    send, {raw}cd ${FP`%/*}
    return

;vim下的命令
:*:gp,::Grep
:*:nl,::nohl
:*:fl,::Files
:*:th,::%s/a/b/g
:*:sl,::    ;执行shell命令
    send,{raw}!command
    return 






