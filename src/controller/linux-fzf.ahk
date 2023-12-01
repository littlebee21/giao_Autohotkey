:*:f,::
    SwitchEng() 
    sendByClipboard("export FD=$(pwd)/$(fzf --preview 'cat {}') && echo ${FD}")
    send {enter}
    send {shift}
    return
