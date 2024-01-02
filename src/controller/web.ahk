;####### 打开网站 ####################
:*:ai\::
    run C:\Program Files\Google\Chrome\Application\chrome.exe https://www.bing.com/search?q=Bing+AI&showconv=1&FORM=hpcodx
    return 

:*:h\:: ;github网站
    run https://github.com/search?q=%clipboard%&type=code;
    run https://github.com/search?q=%clipboard%&type=wikis      ;github 博客搜索
    run	https://search.gitee.com/?skin=rec&type=blog&q=%clipboard% ;gitee博客搜索
    return

Alt & g:: ;google网站
                            send ^c
                            sleep 100
                            Run C:\Program Files\Google\Chrome\Application\chrome.exe https://www.google.com/search?q=%clipboard%
                            return
!j:: ;;翻译网站
                            send ^c
                            sleep 200
                            run C:\Program Files\Google\Chrome\Application\chrome.exe https://fanyi.baidu.com/#en/zh/%clipboard%
                            return
:*:bl\:: ;;bili
                            run C:\Program Files\Google\Chrome\Application\chrome.exe https://www.bilibili.com/?spm_id_from=333.1007.0.0
                            return

runWebSite(WebSite)
{
    Run, % WebSite
    return
}

