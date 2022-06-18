

;############### Chrome #############
#IfWinActive ahk_exe chrome.exe
;Alt & j:: MouseMove, -180, 0, 0, R ;鼠标向左移动10
;Alt & l:: MouseMove, 180, 0, 0, R ;鼠标向右移动10、
;Alt & i:: MouseMove, 0, -30, 0, R ;鼠标向上移动10
;Alt & k:: MouseMove, 0, 30, 0, R ;鼠标向下移动10

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


^p:: ^+a    ;进行内容的搜索

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
