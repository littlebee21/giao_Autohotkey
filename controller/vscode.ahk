#include %A_ScriptDir%\function\IME.ahk

:*:ck\::    ;切换光标到vscode的编辑页面
    ActivateAndOpen("Code","D:\Program Files\Microsoft VS Code\Code.exe")
    send ^1
    return
    
:*:cm\::    ;切换光标到vscode的命令行页面
    ActivateAndOpen("Code","D:\Program Files\Microsoft VS Code\Code.exe")
    send ^j
    send ^j
    return



;############### vscode ##################
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




