:*:f,::
    SwitchEng() 
    sendByClipboard("export FD=$(pwd)/$(fzf --preview 'cat {}') && echo ${FD}")
    send {enter}
    send {shift}
    return

:*:fd,::
    sendByClipboard("$FD")
    return

:*:tg,::
    sendByClipboard("-g $name.txt:$tg")
    return

:*:pg,::
    sendByClipboard("$pg")
    return
