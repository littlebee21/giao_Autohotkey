;根据时间戳进行整理，更具时间戳进行整理


;每小时一个文件
$^c:: ;保存复制内容到笔记
    send ^c
    sleep 1000
    FileAppend,
    (
---------%A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min% begin -------------------
        %clipboard%
---------%A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min% end --------------------
`n`n`n`n

    ), F:\all\note\daylog\log-%A_YYYY%-%A_MM%%A_DD%-%A_Hour%%A_Min%.txt,UTF-8
return


;可以记录所有我们搜索到的东西
;然后就是搜索历史，我们可以创建一个文件，作为链接，然后
