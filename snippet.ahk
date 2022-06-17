;所有的缩写
!'::send //gao%A_YYYY%-%A_MM%%A_DD%-%A_Hour%    ;插入的时间戳

:*:pr,::printf("$$$$$$$$$，func = %s, line = %d $$$$$$$$$$$ \n", __func__, __LINE__); //test



;正则表达式
:*:zhongwen,::(.[\u4E00-\u9FA5]+)|([\u4E00-\u9FA5]+.)
:*:konghang,::^\s*(?=\r?$)\n


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



