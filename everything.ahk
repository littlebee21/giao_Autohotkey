;################ everthing #############
#IfWinActive ahk_exe Everything.exe
Alt & enter::
    send ^a
    send ^c
    sleep 100
    run https://www.google.com/search?q=%clipboard%             ;5,谷歌搜索 全部
    run https://www.baidu.com/s?word=%clipboard%                ;2,百度搜索
    return


#IfWinActive