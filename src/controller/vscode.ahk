#include %A_ScriptDir%\src\function\IME.ahk


^\::  ;打开vscode窗口
    GetKeyState, state, m
    if state != D
    {
        return
    }
    ActivateAndOpen("Code","D:\Program Files\Microsoft VS Code\Code.exe")
    send ^j
    send ^j
    return

;############### vscode ##################
;修改默认的vscode按键  
;面板全屏: alt 、
#IfWinActive ahk_exe Code.exe
$Esc::
    SwitchEng()
    send,{Esc} 
    return

!n::   ;继续内容的搜索
    send ^l
    Run https://fanyi.baidu.com/
    return

!]::   ;切换到下一个终端
    send, {ctrl down}{PgDn}
    send, {ctrl up}
    return
    
![::   ;切换到下一个终端
    send, {ctrl down}{PgUp}
    send, {ctrl up}
    return

RAlt & f::   send {f4} ;控制全局搜索向上
RAlt & r::   shiftF4() ;控制全局搜索向下
    
#IfWinActive


;################function
shiftF4(){
    send {shift down}{f4}
    send {shift up}
    return
}




