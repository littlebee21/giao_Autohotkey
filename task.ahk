:*:ttm,::
    a = %A_MM%%A_DD%    ;插入的时间戳
    send tk%a%
    return 



$^m:: ;保存复制内容到笔记
    send ^c
    sleep 1000
    ;表象文件
    FileAppend,
    (
        %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min% -----------
        %clipboard%
    ), F:\all\note\tasklog\tk%A_MM%%A_DD%-%A_Hour%%A_Min%.txt,UTF-8

    ;记录文件
    FileAppend,
    (
        %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min% -----------%clipboard%
    ), F:\all\note\tasklog\daytask%A_MM%%A_DD%.txt,UTF-8

return

