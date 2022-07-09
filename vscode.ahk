;############### vscode ##################
#IfWinActive ahk_exe Code.exe
$Esc::  
    ;SwitchIME(0x08040804) ; 中文(中国) 简体中文-美式键盘
    SwitchIME(00000804) ; 中文(中国) 简体中文-美式键盘  
    IME_SET(0)
    send,{Esc} 
    return

!n::
    send ^l
    Run https://www.google.com/search?q=%clipboard%
    Run https://www.baidu.com/s?word=%clipboard%
    return

#e:: ;进行页面内部的分屏
    send ^\
    return

RAlt & f::   ;控制全局搜索向上
    send {f4}
    return


RAlt & r::   ;控制全局搜索向上
    send {shift down}{f4}
    send {shift up}
    return
    
^'::   ;快速选中当前的函数代码，然后复制到其他的位置
    send ^l
    send {shift down}
    send {down}
    send {shift up}
    return

#IfWinActive





