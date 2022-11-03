;############################ 按键的修改 ################
LAlt & k::   moveCursorChangeSpeed("up")
LAlt & h::   moveCursorChangeSpeed("left")
LAlt & j::   moveCursorChangeSpeed("down")
LAlt & l::   moveCursorChangeSpeed("right")

RAlt & w::   moveMouseChangeSpeed("up")
RAlt & a::   moveMouseChangeSpeed("left")
RAlt & s::   moveMouseChangeSpeed("down")
RAlt & d::   moveMouseChangeSpeed("right")

$^l::   select_line()      ;删除当前行

LAlt & u::send,{home}
LAlt & o::send,{end}
F1::Click

;###########################################################
; 移动光标自动切换速度
moveCursorChangeSpeed(forward)
{
    If GetKeyState("e","P")
    {
        moveCursor(13, forward)
        return
    }
    moveCursor(1, forward)
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

; 移动鼠标自动切换速度
moveMouseChangeSpeed(forward)
{
    If GetKeyState("k","P")
    {
        moveMouse(13, forward)
        return
    }
    moveMouse(1, forward)
    return
}

moveMouse(step, forward)
{
    loop %step%
    {
        if (forward = "left")
        {
            MouseMove, -20, 0, 0, R ;鼠标向左移动10
        }
        if (forward = "right")
        {
            MouseMove, 20, 0, 0, R ;鼠标向左移动10
        }
        if (forward = "up")
        {
            MouseMove, 0, -20, 0, R ;鼠标向上移动10
        }
        if (forward = "down")
        {
            MouseMove, 0, 20, 0, R ;鼠标向下移动10
        }
    }
    return
}


;在不同的模式下移动光标和方向按键
moveCursorAndMouse(speed, forward)
{
    if % model = "mouse"
    {
        If GetKeyState("k","P")
        {
            moveMouse(13, forward)
            return
        }
        moveMouse(speed, forward)
        return
    }
    If GetKeyState("k","P")
    {
        moveCursor(13,forward)
        return
    }
    moveCursor(speed,forward)
    return
}