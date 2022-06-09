;######### 窗口操作 ##############
;默认win+d 显示屏幕，所有的窗口最小化
;默认win+l 锁定屏幕
;F11是全屏操作

#j:: ;按下win + k ，将窗口向右侧移动
    send, {lwin down}{left}
    sleep 50
    send, {lwin up}
    return

#k:: ;按下win + j ，将窗口向左侧移动
    send, {lwin down}{right}
    sleep 50
    send, {lwin up}
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