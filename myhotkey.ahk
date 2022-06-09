#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory

#include snippet.ahk   ;快捷键工具
#include chrome.ahk   
#include application.ahk
#include web.ahk
#include file.ahk
#include windows.ahk
#include terminal.ahk


;############################ 按键的修改 ################
Alt & a::send,{left}
Alt & d::send,{right}
Alt & w::send,{up}
Alt & s::send,{down}

Alt & q::send,{home}
Alt & e::send,{end}
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


^SPACE::  Winset, Alwaysontop, , A
    

!v::
MouseGetPos, xpos, ypos 
MsgBox, The cursor is at X%xpos% Y%ypos%.
return



