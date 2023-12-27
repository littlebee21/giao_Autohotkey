:*:f,::
    SwitchEng() 
    sendByClipboard("export FD=$(fzf --preview 'cat {}') && echo ${FD}")
    send {enter}
    send {shift}
    return
:*:t,::
    SwitchEng() 
    sendByClipboard("export FD=$(tree -idf -L 2 | fzf ) && echo ${FD}")
    send {enter}
    send {shift}
    return
:*:e,::
    SwitchEng() 
    sendByClipboard("$FD = fzf;Write-Host $FD")
    send {enter}
    send {shift}
    return
