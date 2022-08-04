#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory

#include snippet.ahk   ;快捷键工具
#include markdown-snippet.ahk
#include route.ahk
#include linux.ahk
#include linux-fzf.ahk
#include wsl.ahk
#include git.ahk
#include search.ahk

#include application.ahk
#include everything.ahk
#include chrome.ahk   
#include wps.ahk
#include vscode.ahk

#include web.ahk
#include file.ahk
#include windows.ahk
#include terminal.ahk
#include javascript.ahk
#include music.ahk
#include scp.ahk
;#include test.ahk


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
Alt & v::
    loop 5 {
        send,{right}
    }
    ;MouseClick,WheelUp,,,1,0,D,R
    return
Alt & z::   
    loop 5 {
        send,{left}
    }
    ;MouseClick,WheelUp,,,1,0,D,R
    return


$^l::    ;删除当前行
    select_line()
    copy()
    return 

RAlt & s::send,{down}
RAlt & a::send,{left}
RAlt & d::send,{right}
RAlt & w::send,{up}


RAlt & q::send,{home}
RAlt & e::send,{end}
    

;设置鼠标的移动
;这样的鼠标只能起到粗略的鼠标的作用，并不不能完全的替代鼠标】
;细粒度
^!j:: MouseMove, -20, 0, 0, R ;鼠标向左移动10
^!l:: MouseMove, 20, 0, 0, R ;鼠标向右移动10
^!i:: MouseMove, 0, -20, 0, R ;鼠标向上移动10
^!k:: MouseMove, 0, 20, 0, R ;鼠标向下移动10

^!space::send {click}

+!u:: 
    CoordMode, Mouse, Screen
    MouseMove, 400, 200 ;鼠标向左移动10
    return
+!j:: 
    CoordMode, Mouse, Screen
    MouseMove, 400, 800 ;鼠标向左移动10
    return
+!i:: 
    CoordMode, Mouse, Screen
    MouseMove, 1000,200 ;鼠标向右移动10
    return
+!k:: 
    CoordMode, Mouse, Screen
    MouseMove, 1000,800 ;鼠标向右移动10
    return
+!o:: 
    CoordMode, Mouse, Screen
    MouseMove, 1600,200 ;鼠标向右移动10
    return
+!l:: 
    CoordMode, Mouse, Screen
    MouseMove, 1600,800 ;鼠标向右移动10
    return

