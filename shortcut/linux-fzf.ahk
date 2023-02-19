:*:f,::
    SwitchEng() 
    sendByClipboard("export FD=$(fzf --preview 'cat {}') && echo ${FD}")
    send {enter}
    send {shift}
    return

:*:fw,::
    SwitchEng() 
    sendByClipboard("export FD=$(/mnt/d/share/gshell/linux-fzf-wsl.sh) && echo ${FD}")

    send {enter}
    send {shift}
    return


:*:hisf,::
	send, {raw}$(fc -l -n|fzf)
	return


        

