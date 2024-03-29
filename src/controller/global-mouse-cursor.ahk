;############################ 按键的修改 ################
RAlt & w::   move("up")
RAlt & a::   move("left")
RAlt & s::   move("down")
RAlt & d::   move("right")

#MaxHotkeysPerInterval 990000
RAlt & c::   moveCursor(13, "up")
RAlt & x::   moveCursor(13, "down")


$^l::   select_line()      ;删除当前行

RAlt & q::send,{home}
RAlt & e::send,{end}
F1::Click

;###########################################################
move(forward)
{
    If GetKeyState("l","P")
    {
        moveMouse(13, forward)
        return
    }
    If GetKeyState(".","P")
    {
        moveMouse(1, forward)
        return
    }
    moveCursor(1, forward)
    return
}

moveCursor(step, forward)
{
    send, {%forward% %step%}
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