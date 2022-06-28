;############### vscode ##################
#IfWinActive ahk_exe Code.exe
$Esc::  
    ;SwitchIME(0x08040804) ; 中文(中国) 简体中文-美式键盘
    SwitchIME(00000804) ; 中文(中国) 简体中文-美式键盘  
    IME_SET(0)
    send,{Esc} 
    return

!n::
    send ^c
    Run https://www.google.com/search?q=%clipboard%
    Run https://www.baidu.com/s?word=%clipboard%
    return

#e:: ;进行页面内部的分屏
    send ^\
    return

#IfWinActive


