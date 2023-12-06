#IfWinActive ahk_exe msedge.exe

^p::   ;继续内容的搜索
    send ^+a
    SwitchEng()
    sleep 100
    send {shift}
    return

#IfWinActive
