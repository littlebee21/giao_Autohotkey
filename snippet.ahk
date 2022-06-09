;所有的缩写
;插入修改的时间戳
!'::send  //gao%A_YYYY%-%A_MM%%A_DD%-%A_Hour%
:*:pr\::printf("$$$$$$$$$，func = %s, line = %d $$$$$$$$$$$ \n", __func__, __LINE__); //test
:*:130,::192.168.1.130
:*:gp,::|grep

;正则表达式
:*:zhongwen,::(.[\u4E00-\u9FA5]+)|([\u4E00-\u9FA5]+.)
:*:konghang,::^\s*(?=\r?$)\n


;windows的快捷键
;笔记本windows路径
:*:gao,::/mnt/f/Users/gao/
:*:siwei,::/mnt/f/all/note/siwei/
:*:codehub,::/mnt/f/codehub/
:*:share,::/mnt/f/share/
:*:giao,::/mnt/f/share/giaoAutohotkey/
:*:comp,::/mnt/f/share/mycomputer/
:*:baiy,::/mnt/f/BaiduNetdiskDownload/


;域固windows路径
:*:ygao,::/mnt/d/gao/
:*:ygiao,::/mnt/d/gao/share/giaoAutohotkey/
:*:yshare,::/mnt/d/gao/share/mycomputer/

;虚拟机路径
:*:vg,::/work_mount/giaoAutohotkey/
:*:vs,::/work_mount/

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