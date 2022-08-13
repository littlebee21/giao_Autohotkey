;######### 窗口操作 ##############
;默认win+d 显示屏幕，所有的窗口最小化
;默认win+l 锁定屏幕
;F11是全屏操作

#n:: ;左下1/4
    WinGetActiveTitle, WinTitle
    WinMove, %WinTitle%,, (A_ScreenWidth/8),(A_ScreenHeight/2), (A_ScreenWidth/2)-(A_ScreenWidth/8), (A_ScreenHeight/2)-30,,
    return

#u:: ;左上1/4
    WinGetActiveTitle, WinTitle
    WinMove, %WinTitle%,, 0,0, (A_ScreenWidth/2), (A_ScreenHeight/2),,
    return

#o:: ;右上1/4
    WinGetActiveTitle, WinTitle
    WinMove, %WinTitle%,, (A_ScreenWidth/2),0, (A_ScreenWidth/2), (A_ScreenHeight/2),,
    return

#m:: ;右下1/4
    WinGetActiveTitle, WinTitle
    WinMove, %WinTitle%,, (A_ScreenWidth/2),(A_ScreenHeight/2), (A_ScreenWidth/2), (A_ScreenHeight/2)-30,,
    return

#j:: ;左上1/2
    WinGetActiveTitle, WinTitle
    WinMove, %WinTitle%,, 0,0, (A_ScreenWidth/2), (A_ScreenHeight)-30,,
    return

#k:: ;右侧1/2
    WinGetActiveTitle, WinTitle
    WinMove, %WinTitle%,, (A_ScreenWidth/2),0, (A_ScreenWidth/2), (A_ScreenHeight)-30,,
    return


#w:: ;按下win + w，将窗口最大化
    WinMaximize,A
    return

#s:: ;按下win + s 将窗口最小化
    WinMinimize ,A 
    return


#q:: ;alt + F4关闭当前应用
   send, {alt down}{f4}
    sleep 50
    send, {alt up}
    return

#[:: ;焦点跳转到左侧界面
    MouseMove, -1200, 0, 0, R ;鼠标向左移动10
    Click
    return
#]:: ;焦点跳转到右侧界面
    MouseMove, 1200, 0, 0, R ;鼠标向左移动10
    Click
    return


!6:: ;todo
WinGet, id, List,,, Program Manager
Loop, %id%
{
    this_id := id%A_Index%
    WinGetTitle, this_title, ahk_id %this_id%
    Gui, Add, Text,,%id%%this_title%
}
Gui, Font, norm
Gui Show
return

