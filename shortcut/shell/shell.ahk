;shell脚本记忆名字是记忆不下来的需要进行提示
;输入完b，之后就使用提示功能完成完成的代码运行
;效率肯定是比直接输入命令行的方式低, 高频使用的内容可以设置成简写脚本的形式
;将实际的内容写在shell的脚本当中，用autohotkey写出类似eve的调用方式

;定义
;还需要过滤掉所有前面没有内容的
:*:js,::
    sendByClipboard("grep $kw -rn | grep '(=|return|;|if)' -vE | grep $kw ")
    return

:*:kw,::export kw=
;调用肯定更多，掺杂少量的定义也无所谓；

