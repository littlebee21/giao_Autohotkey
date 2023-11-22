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
