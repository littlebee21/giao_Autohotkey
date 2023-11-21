;还需要过滤掉所有前面没有内容的
:*:js,::
    sendByClipboard("grep $kw -rn | grep '(=|return|;|if)' -vE | grep $kw ")
    return

:*:kw,::export kw=


:*:fg,::
    FileRead, Clipboard, %A_ScriptDir%\shell\find-gshell.sh
    send ^v
    send {enter}
    return

