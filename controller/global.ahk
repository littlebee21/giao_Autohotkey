#include %A_ScriptDir%\function\function.ahk


;############################ 按键的修改 ################
;快速的移动光标
RAlt & c::   moveCursor(13, "up")
RAlt & x::   moveCursor(13, "down")
RAlt & v::   moveCursor(13, "right")
RAlt & z::   moveCursor(13, "left")


RAlt & s::send,{down}
RAlt & a::send,{left}
RAlt & d::send,{right}
RAlt & w::send,{up}

$^l::   select_line()      ;删除当前行



RAlt & q::send,{home}
RAlt & e::send,{end}



moveCursor(step, forward)
{
    loop %step% 
    {
        send, {%forward%}
    }
    ;MouseClick,WheelUp,,,1,0,D,R
    return
}
