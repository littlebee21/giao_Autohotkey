;############### vscode ##################
#IfWinActive ahk_exe Code.exe

LAlt & k::
    loop 13 {
        send,{up}
    }
    ;MouseClick,WheelUp,,,1,0,D,R
    return
LAlt & j::
    loop 13 {
        send,{down}
    }
    ;MouseClick,WheelUp,,,1,0,D,R
    return


!p::
    send ^b
    return 
#e:: ;进行页面内部的分屏
    send ^\
    return
!f::  ;对查找ctrl+f进行修改
    ;第一次查找
    send ^+f
    MouseMove, 153, 145 ;鼠标移动到输入位置
    sleep 100
    Click
    ;send ^v
    ;send {enter}
    return
!o::    ;光标移动到输入框
    MouseMove, 142,68 ;鼠标移动到输入位置
    Click 2
    return 
!i::
    send ^+e ;打开任务栏
    return 
#IfWinActive


