:*:f,::
    SwitchEng() 
    sendByClipboard("export FD=$(fzf --preview 'cat {}') && echo ${FD}")
    send {enter}
    send {shift}
    return

:*:r,::
    SwitchEng() 
    sendByClipboard("export FD=$(/mnt/d/share/gshell/linux-fzf-wsl.sh) && /mnt/d/share/gshell/linux-fzf-echo.sh")

    send {enter}
    send {shift}
    return


:*:h,::
    SwitchEng() 
    sendByClipboard("export FD=$(cat ~/found-file |fzf)")

    send {enter}
    send {shift}
    return


:*:fd,::
    sendByClipboard("${FD}")
    return

