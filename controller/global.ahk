#include %A_ScriptDir%\function\function.ahk


;############################ 按键的修改 ################
;快速的移动光标
Alt & c::   moveCursor(13, "up")
Alt & x::   moveCursor(13, "down")
Alt & v::   moveCursor(13, "right")
Alt & z::   moveCursor(13, "left")

$^l::   select_line()      ;删除当前行

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


moveCursor(step, forward)
{
    loop %step% 
    {
        send, {%forward%}
    }
    ;MouseClick,WheelUp,,,1,0,D,R
    return
}
