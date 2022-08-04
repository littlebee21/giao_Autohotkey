#include IME.ahk


;############### vscode ##################
#IfWinActive ahk_exe Code.exe
$Esc::  
    ;SwitchIME(0x08040804) ; 中文(中国) 简体中文-美式键盘
    SwitchIME(00000804) ; 中文(中国) 简体中文-美式键盘  
    IME_SET(0)
    send,{Esc} 
    return

!n::   ;继续内容的搜索
    send ^l
    Run https://fanyi.baidu.com/
    return

;vscode的直接搜索功能

;vscode窗口的变化
$^j::    ;激活终端窗口，每次都固定激活,
    send ^j
    send ^j
    return
    
^i::     ;激活窗口之后的进行搜索联合使用，将两个相近的按键放在一起
    SwitchIME(00000804) ; 中文(中国) 简体中文-美式键盘
    IME_SET(0)
    send {raw}export FD=$(find ~/work_mount/docs |fzf --preview 'cat {}') && echo ${FD}
    send {enter}
    return

;vscode的窗口相关功能
RAlt & f::   ;控制全局搜索向上
    send {f4}
    return


RAlt & r::   ;控制全局搜索向下
    send {shift down}{f4}
    send {shift up}
    return
    
^'::   ;快速选中当前的函数代码，然后复制到其他的位置
    if()
    send {shift down}
    send {down}
    send {shift up}
    return

#IfWinActive




