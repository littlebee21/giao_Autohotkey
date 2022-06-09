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