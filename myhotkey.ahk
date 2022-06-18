#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory

#include snippet.ahk   ;快捷键工具
#include route.ahk
#include linux.ahk
#include git.ahk

#include application.ahk
#include everything.ahk
#include chrome.ahk   
#include wps.ahk
#include vscode.ahk

#include web.ahk
#include file.ahk
#include windows.ahk
#include terminal.ahk
#include test.ahk


#include log.ahk

;函数的集合
#include fuction.ahk

;############################ 按键的修改 ################
;快速的移动光标
Alt & c::
    loop 13 {
        send,{up}
    }
    ;MouseClick,WheelUp,,,1,0,D,R
    return
Alt & x::  
    loop 13 {
        send,{down}
    }
    ;MouseClick,WheelDown,,,1,0,D,R
    return

$^l::    ;删除当前行
    select_line()
    copy()
    return 

!.::     ;全文创建搜索框
    ActivateAndOpen("Xshell","C:\Program Files (x86)\NetSarang\Xshell 7\Xshell.exe")
    send ^b
    sleep 100
    send c
    send ff{space}
    return

RAlt & s::send,{down}
RAlt & a::send,{left}
RAlt & d::send,{right}
RAlt & w::send,{up}

RAlt & q::send,{home}
RAlt & e::send,{end}






    
    


