;####### 打开网站 ####################
:*:h\:: ;github网站
    run https://github.com/search?q=%clipboard%&type=code;
    run https://github.com/search?q=%clipboard%&type=wikis      ;github 博客搜索
    run	https://search.gitee.com/?skin=rec&type=blog&q=%clipboard% ;gitee博客搜索
    return
:*:ss\:: ;google网站
                            Run, https://www.google.com/search?q=%clipboard%
return
:*:2\:: 
                            runWebSite("https://www.baidu.com/") 
return
:*:f\:: ;;翻译网站
                            runWebSite("https://fanyi.baidu.com/")
return
:*:yf\:: ;;翻译网站
                            runWebSite("https://dict.youdao.com/search?q=%E5%A4%A7%E4%BA%8E&keyfrom=new-fanyi.smartResult")
return
:*:ge\:: ;gitee网站
                            runWebSite("https://gitee.com/")
return
:*:g\:: ;github网站
                            runWebSite("https://github.com/")
return
:*:cs\:: ;csdn网站
                            runWebSite("https://so.csdn.net/so/search?")
return
:*:bdbk\:: ;百度百科
                            runWebSite("Run https://baike.baidu.com/")
return
:*:wj\:: ;;维基百科
                            runWebSite("https://zh.wikipedia.org/wiki/Hello")
return
:*:bk\:: ;;博客园
                            runWebSite("https://www.cnblogs.com/")
return
:*:bl\:: ;;bili
                            runWebSite("https://www.bilibili.com/?spm_id_from=333.1007.0.0")
return
:*:cn\:: ;;菜鸟
                            runWebSite("https://www.runoob.com/")
return
:*:vue\::   
                            runWebSite("https://vuejs.bootcss.com/api/?")
return

runWebSite(WebSite)
{
    Run, % WebSite
    return
}

