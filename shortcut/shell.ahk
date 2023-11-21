;还需要过滤掉所有前面没有内容的
:*:js,::
    sendByClipboard("grep $kw -rn | grep '(=|return|;|if)' -vE | grep $kw ")
    return

:*:kw,::export kw=


:*:fg,::
    sendFile("\snippet\shell\find-gshell.sh")
    send {enter} 
    return
