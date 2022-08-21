;所有的缩写

:*:ahk,::
    send, {raw}:*:tt,::
    return

:*:pr,::printf("$$$$$$$$$，func = %s, line = %d $$$$$$$$$$$ \n", __func__, __LINE__); //test
:*:tm,::
    send {raw}txt|md
    return


;正则表达式
:*:zhongwen,::(.[\u4E00-\u9FA5]+)|([\u4E00-\u9FA5]+.)
:*:konghang,::^\s*(?=\r?$)\n


;file
:*:gc,::gaocache.txt



:*:i18,::
    send, {raw}{{ $t('') }}
    return

:*:time,::
    a = %A_YYYY%-%A_MM%%A_DD%-%A_Hour%    ;插入的时间戳
    send %a%
    return 

:*:date,::
    a = %A_YYYY%-%A_MM%%A_DD%    ;插入的日期
    send %a%
    return 

:*:log,::
    a = %A_YYYY%-%A_MM%%A_DD%-%A_Hour%    ;插入的时间戳
    send %a%
    return
    
:*:l,::
    send {raw}.*
    return


;-Ddata_com_ibm=true  extension:bbappend