#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory

#include snippet.ahk   ;快捷键工具

#include application.ahk
#include chrome.ahk   
#include wps.ahk

#include web.ahk
#include file.ahk
#include windows.ahk
#include terminal.ahk
;#include test.ahk

;函数的集合
#include fuction.ahk

;全局按键的修改
;############################ 按键的修改 ################
Alt & a::send,{left}
Alt & d::send,{right}
Alt & w::send,{up}
Alt & s::send,{down}

Alt & q::send,{home}
Alt & e::send,{end}

;快速的移动光标
Alt & c::
    loop 13 {
        send,{up}
    }
    MouseClick,WheelUp,,,1,0,D,R
    return
Alt & x::  
    loop 13 {
        send,{down}
    }
    MouseClick,WheelDown,,,1,0,D,R
    return

$^l::    ;删除当前行
    select_line()
    copy()
    return 

