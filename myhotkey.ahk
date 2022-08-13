#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory

#include %A_ScriptDir%\shortcut\markdown-snippet.ahk
#include %A_ScriptDir%\shortcut\snippet.ahk   ;快捷键工具
#include %A_ScriptDir%\shortcut\route.ahk
#include %A_ScriptDir%\shortcut\linux.ahk
#include %A_ScriptDir%\shortcut\linux-fzf.ahk
#include %A_ScriptDir%\shortcut\javascript.ahk
#include %A_ScriptDir%\shortcut\scp.ahk
#include %A_ScriptDir%\shortcut\git.ahk
#include %A_ScriptDir%\shortcut\music.ahk
#include %A_ScriptDir%\shortcut\search.ahk

#include %A_ScriptDir%\controller\application.ahk
#include %A_ScriptDir%\controller\everything.ahk
#include %A_ScriptDir%\controller\chrome.ahk
#include %A_ScriptDir%\controller\wps.ahk
#include %A_ScriptDir%\controller\vscode.ahk
#include %A_ScriptDir%\controller\windows.ahk
#include %A_ScriptDir%\controller\terminal.ahk
#include %A_ScriptDir%\controller\wsl.ahk
#include %A_ScriptDir%\controller\file.ahk
#include %A_ScriptDir%\controller\log.ahk
#include %A_ScriptDir%\controller\web.ahk

;#include test.ahk

;函数的集合
#include %A_ScriptDir%\function\function.ahk

;############################ 按键的修改 ################
;快速的移动光标
Alt & c::   moveCursor(13, "up")
Alt & x::   moveCursor(13, "down")
Alt & v::   moveCursor(13, "right")
Alt & z::   moveCursor(13, "left")

moveCursor(step, forward)
{
    loop %step% 
    {
        send, {%forward%}
    }
    ;MouseClick,WheelUp,,,1,0,D,R
    return
}


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
+!u::   MouseMoveScreen(400,200)
+!j::   MouseMoveScreen(400,800)  ;鼠标向左移动10
+!i::   MouseMoveScreen(1000,200)  
+!k::   MouseMoveScreen(1000,800)
+!o::   MouseMoveScreen(1600,200)
+!l::   MouseMoveScreen(1600,800)
 
MouseMoveScreen(xcoor,ycoor){
    CoordMode, Mouse, Screen
    MouseMove, %xcoor%,%ycoor% ;鼠标向右移动10
    return
}