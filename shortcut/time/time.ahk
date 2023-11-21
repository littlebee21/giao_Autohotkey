:*:time,::
    a = %A_YYYY%-%A_MM%%A_DD%-%A_Hour%%A_Min%    ;插入的时间戳
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
