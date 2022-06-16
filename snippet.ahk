;所有的缩写
;插入修改的时间戳
!'::send //gao%A_YYYY%-%A_MM%%A_DD%-%A_Hour%

:*:pr,::printf("$$$$$$$$$，func = %s, line = %d $$$$$$$$$$$ \n", __func__, __LINE__); //test
:*:31130,::192.168.31.130
:*:127,::127.0.0.1
:*:0130,::192.168.0.130


;正则表达式
:*:zhongwen,::(.[\u4E00-\u9FA5]+)|([\u4E00-\u9FA5]+.)
:*:konghang,::^\s*(?=\r?$)\n



;前端
:*:ngs,::ng serve --open --host 192.168.0.130

;openbmc
:*:exportbmc1,::export TEMPLATECONF=meta-ibm/meta-palmetto/conf 
:*:exportbmc2,::. openbmc-env
:*:bitbakebmc,:: bitbake obmc-phosphor-image


;windows的wsl的快捷键
:*:gao,::/mnt/d/Users/gao/
:*:wc,::/mnt/d/codehub/
:*:ws,::/mnt/d/share/
:*:wg,::/mnt/d/share/gshell/
:*:wbai,::/mnt/f/BaiduNetdiskDownload/

:*:wcs,::F: && cd F:/share/mycomputer/openbmc_20


;域固windows路径
:*:ygao,::/mnt/d/gao/
:*:yg,::/mnt/d/gao/share/gshell/
:*:ys,::/mnt/d/gao/share/

;虚拟机路径
:*:vs,::~/work_mount/
:*:vg,::~/work_mount/gshell/
:*:vgf,::~/work_mount/gshell/fanqiang/
:*:vp,::~/work_mount/project/
:*:vws,::~/openbmc/build/workspace/sources/

:*:vm,::sudo /sbin/mount.vboxsf work_mount ~/work_mount/

:*:proxy,::export all_proxy=socks5://127.0.0.1:7890
:*:unproxy,::unset all_proxy

;全局按键
;alt + 3 进行快速截图
;alt + e 进行快速保存截图
!n:: ;保存复制内容到笔记
    send ^c
    FileAppend,
    (
        ``````
        ---------%A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min% begin ---------
        %clipboard%
    ---------%A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min% end -----------
        `n`n`n`n
    ), F:\all\note\daylog\log-%A_YYYY%-%A_MM%-%A_DD%.md,UTF-8
return

;autohotkey命令


;linux命令
:*:tr1,::tree -L 1
:*:tr2,::tree -L 2
:*:tr3,::tree -L 3 
:*:ncheck,::–no-check-certificate
:*:hisf,::
	send, {raw}$(fc -l -n|fzf)
	return

:*:sl,::
    send,{raw}!command
    return 
:*:lf,::
	send, {raw}'du -h --max-depth=1 ./'
	return 


:*:vim ,::
    send, {raw}vim ${FP}
    return
:*:cd ,::
    send, {raw}cd ${FP}
    return



;vim下的命令
:*:gp,::Grep
:*:nl,::nohl
:*:fl,::Files
:*:th,::%s/a/b/g



;function


;powershell命令
:*:sfhq,::Set-NetFirewallProfile -Enabled False
:*:rfhq,::NetSh Advfirewall set allprofiles state on
:*:swfhq,::ufw disable

:*:rdk,::iptables -I INPUT -p tcp --dport 8080 -j ACCEPT
:*:gdk,::netstat -ntlp