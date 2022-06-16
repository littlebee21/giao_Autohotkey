#include IME.ahk

;切换输入法的
;SwitchIME(04090409) ; 英语(美国) 美式键盘
;SwitchIME(04090409) ; 英语(美国) 美式键盘
;SwitchIME(00000804) ; 中文(中国) 简体中文-美式键盘  
;SwitchIME(0x08040804) ; 中文(中国) 简体中文-美式键盘  不能
;SwitchIME(0x04090409) ; 英语(美国) 美式键盘 
SwitchIME(dwLayout){
    HKL:=DllCall("LoadKeyboardLayout",Str,dwLayout,UInt,1)
    ControlGetFocus,ctl,A
    SendMessage,0x50,0,HKL,%ct1%,A
}

;############### cmder ##################
#IfWinActive ahk_exe ConEmu64.exe
$Esc::  
    ;SwitchIME(0x08040804) ; 中文(中国) 简体中文-美式键盘
    SwitchIME(00000804) ; 中文(中国) 简体中文-美式键盘  
    IME_SET(0)
    send,{Esc} 
    return
Alt & j:: 
    loop 13 {
        send,{down}
    }
    return 
Alt & k:: 
    loop 13 {
        send,{up}
    }
    return
Alt & h:: 
    loop 13 {
        send,{left}
    }
    return
Alt & l:: 
    loop 13 {
        send,{right}
    }
    return
#IfWinActive


#IfWinActive ahk_exe MobaXterm_Personal_22.0.exe
$Esc::  
    ;SwitchIME(0x08040804) ; 中文(中国) 简体中文-美式键盘
    SwitchIME(00000804) ; 中文(中国) 简体中文-美式键盘  
    IME_SET(0)
    send,{Esc} 
    return
Alt & j:: 
    loop 13 {
        send,{down}
    }
    return 
Alt & k:: 
    loop 13 {
        send,{up}
    }
    return
Alt & h:: 
    loop 13 {
        send,{left}
    }
    return
Alt & l:: 
    loop 13 {
        send,{right}
    }
    return

;tmux相关的快捷按键
^n::   ;新建tmux的终端
    send ^b
    sleep 100
    send c
    return 
^w::    ;关闭当前的终端
    send ^b
    sleep 100
    send &
    sleep 100
    send y
    return
^j::    ;切换页面前
    send ^b
    sleep 100
    send p
    return
^k::    ;切换页面后
    send ^b
    sleep 100
    send n
    return
#IfWinActive
