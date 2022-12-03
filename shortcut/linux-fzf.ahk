:*:f,::
    SwitchEng() 
    send {raw}export FD=$(fzf --preview 'cat {}') && echo ${FD}
    send {enter}
    return

:*:ff,::
    SwitchEng() 
    send {raw}export FD=$(find ~/work_mount/docs |fzf --preview 'cat {}') && echo ${FD}
    send {enter}
    return

:*:fb,::
    send {raw}export FD=$(find ~/work_mount/gshell/ |fzf --preview 'cat {}') && echo ${FD}
    send {enter}
    return

:*:fz,::
    SwitchEng() 
    send {raw}export FD=$(find ~/work_mount/docs/myNavigation/ |fzf --preview 'cat {}') && echo ${FD}
    send {enter}
    send {shift}
    return

:*:hisf,::
	send, {raw}$(fc -l -n|fzf)
	return

:*:fd,::        
    send, {raw}"${FD}"
    return
:*:daxiao,::       ;查看文件夹的大小
	send, {raw}'du -h --max-depth=1 ./'
	return 

:*:b ,::
    SwitchIME(00000804) ; 中文(中国) 简体中文-美式键盘  
    IME_SET(0)
    send, {raw}bash "${FD}"
    return
:*:vim ,::      ;编辑搜索的内容
    SwitchIME(00000804) ; 中文(中国) 简体中文-美式键盘  
    IME_SET(0)
    send, {raw}vim "${FD}"
    return
:*:c,::      ;编辑搜索的内容
    SwitchIME(00000804) ; 中文(中国) 简体中文-美式键盘  
    IME_SET(0)
    send, {raw}code "${FD}"
    return
:*:cd ,::        
    SwitchIME(00000804) ; 中文(中国) 简体中文-美式键盘  
    IME_SET(0)
    send, {raw}cd "${FD`%/*}" && ls
    return

