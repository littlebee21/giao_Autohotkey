#IfWinActive ahk_exe msedge.exe

+b::   ;继续内容的搜索
    send +b
    SwitchEng()
    sleep 200
    send {shift}
    return

#IfWinActive
