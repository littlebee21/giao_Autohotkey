    ;####### 打开应用 ####################
    ;快速打开和激活程序
    #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
    SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
    SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
    SetTitleMatchMode 2    

    WinToLeft()
    {
        sleep 1000
        send, {lwin down}{left}
        sleep 50
        send, {lwin up}
        sleep 100
        send {esc}
        return
    }

    WinToRight()
    {
        sleep 1000
        send, {lwin down}{right}
        sleep 50
        send, {lwin up}
        sleep 100
        send {esc}
        return
    }
    
    Activate(t)
    {
    IfWinActive,%t%
    {
        WinMinimize
        return
    }
    SetTitleMatchMode 2    
    DetectHiddenWindows,on
    IfWinExist,%t%
    {
        WinShow
        WinActivate          
        return 1
    }
    return 0
    }

    ActivateAndOpen(t,p)
    {
    if Activate(t)==0
    {
        Run, %p%
        WinActivate
    }
    return
    }
    

    :*:c\::
        ActivateAndOpen("Code","F:\Users\gao\AppData\Local\Programs\Microsoft VS Code\Code.exe")
        return
    :*:t\::
        ActivateAndOpen("TIM","C:\Program Files (x86)\Tencent\TIM\Bin\TIM.exe")
        return
    :*:md\::
        ActivateAndOpen("Typora","C:\Program Files (x86)\Typora\Typora.exe")
        return
    :*:gg\::
        ActivateAndOpen("Chrome","C:\Program Files\Google\Chrome\Application\chrome.exe")
        return
     :*:w\::
        ActivateAndOpen("WPS","C:\Program Files (x86)\Kingsoft\WPS Office\11.8.2.8411\office6\wps.exe")
        return
    :*:p\::
        ActivateAndOpen("PDF","C:\Users\gao\AppData\Local\SumatraPDF\SumatraPDF.exe")
        return
    :*:v\::
        ActivateAndOpen("VMware Workstation","F:\Program Files (x86)\VMware\VMware Workstation\vmware.exe")
        return
    :*:dd\::
        ActivateAndOpen("DocFetcher","C:\Program Files (x86)\DocFetcher\DocFetcher-4096_64-bit-Java.exe")
        send ^f
        return
    :*:cp\::
        ActivateAndOpen("WinMerge","C:\Program Files (x86)\WinMerge\WinMergeU.exe")
        return
    :*:q\::
        ActivateAndOpen("- Qt Creator","F:\Qt\Qt5.14.2\Tools\QtCreator\bin\qtcreator.exe")
        return
    :*:qa\::
        ActivateAndOpen("Qt 助手","/mnt/f/Qt/Qt5.14.2/5.14.2/mingw73_32/bin/assistant.exe")
        return
    :*:kil\::
        ActivateAndOpen("μVision4","C:\Keil\UV4\Uv4.exe")
        return
    :*:bwp\::
        ActivateAndOpen("BaiduNetdisk","C:\Users\gao\AppData\Roaming\Baidu\BaiduNetdisk\BaiduNetdisk.exe")
        return
    :*:yyy\::
        ActivateAndOpen("Cloud MUsic","C:\Program Files (x86)\Netease\CloudMusic\cloudmusic.exe")
        return



;################ everthing #############
#IfWinActive ahk_exe Everything.exe
#IfWinActive


;############### DocFetcher #############
#IfWinActive ahk_class SWT_Window1
!o:: 
    MouseMove, 682, 47 ;鼠标移动到输入位置
    Click 3
    return
![:: 
    MouseMove, 860, 540 ;鼠标移动到输入位置
    Click 2
    return
!]:: 
    MouseMove, 877, 540 ;鼠标移动到输入位置
    Click 2
    return
:*:w\:: ;定位到文件名点击，让同文件夹内容相邻
    MouseMove, 780, 82
    Click 2
    return
:*:b\:: ;定位到标题
    MouseMove, 359, 103
    Click
    return
#IfWinActive



;############### vscode ##################
#IfWinActive ahk_exe Code.exe
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


;################ ATGUI #################
#IfWinActive ahk_exe ATGUI.exe
!o::
    MouseMove, 80, 100 ;鼠标移动到输入位置
    Click 2
    return
!]::  
    MouseMove, 923, 957 ;鼠标移动到查找位置，下一条
    Click 2
    return
![:: 
    MouseMove, 856, 968 ;鼠标移动到查找位置，上一条
    Click 2
    return
Alt & j:: MouseMove, -20, 0, 0, R ;鼠标向左移动10
Alt & l:: MouseMove, 20, 0, 0, R ;鼠标向右移动10
Alt & i:: MouseMove, 0, -20, 0, R ;鼠标向上移动10
Alt & k:: MouseMove, 0, 20, 0, R ;鼠标向下移动10
!1:: Click
return
#IfWinActive