;############################ 按键的修改 ################
RAlt & w::   moveCursorAndMouse(1, "up")
RAlt & a::   moveCursorAndMouse(1, "left")
RAlt & s::   moveCursorAndMouse(1, "down")
RAlt & d::   moveCursorAndMouse(1, "right")

$^l::   select_line()      ;删除当前行

RAlt & q::send,{home}
RAlt & e::send,{end}

;###########################################################
moveCursor(step, forward)
{
    loop %step% 
    {
        send, {%forward%}
    }
    ;MouseClick,WheelUp,,,1,0,D,R
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
        If GetKeyState(".","P")
        {
            moveMouse(13, forward)
            return
        }
        moveMouse(speed, forward)
        return
    }
    If GetKeyState(".","P")
    {
        moveCursor(13,forward)
        return
    }
    moveCursor(speed,forward)
    return
}