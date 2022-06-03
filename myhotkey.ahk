#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


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
;############################ 按键的修改 ################
Alt & a::send,{left}
Alt & d::send,{right}
Alt & w::send,{up}
Alt & s::send,{down}

Alt & q::send,{home}
Alt & e::send,{end}
Alt & c::
    loop 13 {
        send,{up}
    }
    MouseClick,WheelUp,,,1,0,D,R
    return
Alt & x::
    loop 13 {
        send,{down}
    }
    MouseClick,WheelDown,,,1,0,D,R
    return

;所有的缩写
;插入修改的时间戳
!'::send //gao%A_YYYY%-%A_MM%%A_DD%-%A_Hour%
:*:pr\::printf("$$$$$$$$$，func = %s, line = %d $$$$$$$$$$$ \n", __func__, __LINE__); //test
:*:130'::192.168.0.130
:*:gp'::|grep

;windows的快捷键
;笔记本windows路径
:*:gao'::/mnt/f/Users/gao/
:*:siwei'::/mnt/f/all/note/siwei/
:*:codehub'::/mnt/f/codehub/
:*:share'::/mnt/f/share/
:*:giao'::/mnt/f/share/giaoAutohotkey/
:*:comp'::/mnt/f/share/mycomputer/
:*:baiy'::/mnt/f/BaiduNetdiskDownload/


;域固windows路径
:*:ygao'::/mnt/d/gao/
:*:ygiao'::/mnt/d/gao/share/giaoAutohotkey/
:*:yshare'::/mnt/d/gao/share/mycomputer/

;虚拟机路径
:*:vg'::/work_mount/giaoAutohotkey/
:*:vs'::/work_mount/



;全局按键
;alt + 3 进行快速截图
;alt + e 进行快速保存截图
!n:: ;保存复制内容到笔记
    send ^c
    FileAppend,
    (
        ``````
        ---------%A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min% begin ---------
        %clipboard%
    ---------%A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min% end -----------
        `n`n`n`n
    ), F:\all\note\daylog\log-%A_YYYY%-%A_MM%-%A_DD%.md,UTF-8
return

^SPACE::  Winset, Alwaysontop, , A


;######################### 按键的使用 ###################
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



;对于ctrl快捷键的修改
+!a:: send ^a
+!d:: send ^d
+!n:: send ^n
+!t:: send ^t



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
    :*:dt\::
        ActivateAndOpen("钉","C:\Program Files (x86)\DingDing\main\current_new\DingTalk.exe")
        return
    

    

;########### 关闭对应大的文件 ###########################
;打开特定文件夹，alt+q关闭


;####### 打开文件夹 和 文件 ###################
    :*:\c:: ;使用code打开剪切板的，everything选中的目录
        code = F:\Users\gao\AppData\Local\Programs\Microsoft VS Code\Code.exe
        send ^c
        sleep 100
        send ^c
        file = %clipboard%
        Run,%code% "%file%"
        return

    :*:\b:: ;cmder bash打开对应文件内容
        send ^c
        ;ActivateAndOpen("TOE9G11","F:\software\cmder_mini\vendor\conemu-maximus5\ConEmu64.exe")
        clipboard = %clipboard%
        ;StringReplace, Clipboard, Clipboard, `\, /, All
        sleep 500
        send {ctrl}{insert}
        return



;################ everthing #############
#IfWinActive ahk_exe Everything.exe
#IfWinActive

;############### Chrome #############
#IfWinActive ahk_exe chrome.exe
Alt & j:: MouseMove, -180, 0, 0, R ;鼠标向左移动10
Alt & l:: MouseMove, 180, 0, 0, R ;鼠标向右移动10
Alt & i:: MouseMove, 0, -30, 0, R ;鼠标向上移动10
Alt & k:: MouseMove, 0, 30, 0, R ;鼠标向下移动10
!b:: ;跳转到书签位置
    MouseMove, 302, 198 ;鼠标移动到输入位置
    Click
    return
!o:: ;跳转到历史位置
    MouseMove, 186, 223 ;鼠标移动到输入位置
    Click
    return
;Alt 1 激活onetab
;Alt 2 激活search all tabs
;Alt z 激活smart toc
!f::  ;对查找ctrl+f进行修改
    ;第一次查找
    send ^+f
    ;sleep 500
    ;send ^v
    ;send {enter}
    return

;新型腹泻方式的搜索
Alt & enter::
    send ^a
    send ^c
    run https://www.baidu.com/sf/vsearch?oq=%clipboard% ;视频搜索
    run https://baike.baidu.com/item/%clipboard% ;百度百科搜索
    run https://so.csdn.net/so/search?q=%clipboard% ;csdn
    run https://www.runoob.com/?s=%clipboard% ;菜鸟教程搜索
    run https://github.com/search?q=%clipboard%&type=code ;代码搜索
    run https://www.google.com/search?q=%clipboard%&tbs=qdr:m ;只显示最近一个月信息
    run https://www.jianshu.com/search?q=%clipboard% ;简书搜索
    run https://juejin.cn/search?query=%clipboard% ;掘金搜索
    run https://segmentfault.com/search?q=%clipboard%           ;8,思否搜索
    run https://www.zhihu.com/search?type=content&q=%clipboard% ;9,知乎搜索
    run https://zzk.cnblogs.com/s/blogpost?w=%clipboard%        ;7,博客园搜索
    run https://stackoverflow.com/search?q=%clipboard%          ;6,stackoverflow搜索
    run https://www.google.com/search?q=%clipboard%             ;5,谷歌搜索 全部
    run https://www.google.com/search?q=%clipboard%&tbs=qdr:y   ;4,谷歌搜索 只显示最近一年信息
    run https://github.com/search?q=%clipboard%&type=code       ;3,代码搜索
    run https://github.com/search?q=%clipboard%&type=           ;3,github搜索 
    run https://www.baidu.com/s?word=%clipboard%                ;2,百度搜索
	run https://github.com/search?q=%clipboard%&type=wikis      ;github 博客搜索
	run	https://search.gitee.com/?skin=rec&type=blog&q=%clipboard% ;gitee博客搜索
    run https://zhidao.baidu.com/search?word=%clipboard%        ;1,百度知道搜索
    return
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

#include IME.ahk
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


;####### 打开网站 ####################
    :*:h\:: ;github网站
        run https://github.com/search?q=%clipboard%&type=code;
		run https://github.com/search?q=%clipboard%&type=wikis      ;github 博客搜索
		run	https://search.gitee.com/?skin=rec&type=blog&q=%clipboard% ;gitee博客搜索
        return
    :*:di\:: 
        run https://www.baidu.com/s?word=%clipboard% 
        return 
    :*:2\:: 
        run https://www.baidu.com/
        return 
    :*:l\:: ;;chrome历史记录
        ActivateAndOpen("Chrome","C:\Program Files\Google\Chrome\Application\chrome.exe")
        Send ^h
        return
    :*:b\:: ;;chrome书签栏
        ActivateAndOpen("Chrome","C:\Program Files\Google\Chrome\Application\chrome.exe")
        Send b
        return
    :*:f\:: ;;翻译网站
        Run https://fanyi.baidu.com/
        return
    :*:yf\:: ;;翻译网站
        Run https://dict.youdao.com/search?q=%E5%A4%A7%E4%BA%8E&keyfrom=new-fanyi.smartResult
        return
    
    :*:si\:: ;google网站
        Run https://www.google.com/search?q=%clipboard%
        return
    :*:s\:: ;google网站
        Run https://www.google.com/
        return
    :*:ge\:: ;gitee网站
        Run https://gitee.com/
        return
    :*:g\:: ;github网站
        Run https://github.com/
        return
    :*:cs\:: ;;csdn网站
        Run https://so.csdn.net/so/search?
        return
    :*:bdbk\:: ;;百度百科
        Run https://baike.baidu.com/
        return
    :*:wj\:: ;;维基百科
        Run https://zh.wikipedia.org/wiki/Hello
        return
    :*:bk\:: ;;博客园
        Run https://www.cnblogs.com/
        return
    :*:bl\:: ;;bili
        Run https://www.bilibili.com/?spm_id_from=333.1007.0.0
        return
    :*:cn\:: ;;菜鸟
        Run https://www.runoob.com/
        return
    ;掘金，知乎，


;####################### 测试代码 #########################
;腹泻式的检索
!m:: ;谷歌搜索终极版
    run https://www.baidu.com/sf/vsearch?oq=%clipboard% ;视频搜索
    ;run https://baike.baidu.com/item/%clipboard% ;百度百科搜索
    run https://so.csdn.net/so/search?q=%clipboard% ;csdn
    run https://www.runoob.com/?s=%clipboard% ;菜鸟教程搜索
    run https://github.com/search?q=%clipboard%&type=code ;代码搜索
    run https://www.google.com/search?q=%clipboard%&tbs=qdr:m ;只显示最近一个月信息
    run https://www.jianshu.com/search?q=%clipboard% ;简书搜索
    run https://juejin.cn/search?query=%clipboard% ;掘金搜索
    run https://segmentfault.com/search?q=%clipboard%           ;8,思否搜索
    run https://www.zhihu.com/search?type=content&q=%clipboard% ;9,知乎搜索
    run https://zzk.cnblogs.com/s/blogpost?w=%clipboard%        ;7,博客园搜索
    run https://stackoverflow.com/search?q=%clipboard%          ;6,stackoverflow搜索
    run https://www.google.com/search?q=%clipboard%             ;5,谷歌搜索 全部
    run https://www.google.com/search?q=%clipboard%&tbs=qdr:y   ;4,谷歌搜索 只显示最近一年信息
    run https://github.com/search?q=%clipboard%&type=code       ;3,代码搜索
    run https://github.com/search?q=%clipboard%&type=           ;3,github搜索 
    run https://www.baidu.com/s?word=%clipboard%                ;2,百度搜索
	run https://github.com/search?q=%clipboard%&type=wikis      ;github 博客搜索
	run	https://search.gitee.com/?skin=rec&type=blog&q=%clipboard% ;gitee博客搜索
    run https://zhidao.baidu.com/search?word=%clipboard%        ;1,百度知道搜索
    run https://github.com/littlebee21/siwei/search?p=%clipboard%   ;0 个人github查找
    return



!v::
MouseGetPos, xpos, ypos 
MsgBox, The cursor is at X%xpos% Y%ypos%.
return
