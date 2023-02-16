:*:f,::
    SwitchEng() 
    send {raw}export FD=$(fzf --preview 'cat {}') && echo ${FD}
    send {enter}
    send {shift}
    return

:*:wc,::
    SwitchEng() 
    send {raw}cd /mnt/d/share/gshell/ && export FD=$(fzf --preview 'cat {}') && echo ${FD}
    send {enter}
    send {shift}
    return

:*:vc,::
    SwitchEng() 
    send {raw}cd ~/work_mount/gshell/ && export FD=$(fzf --preview 'cat {}') && echo ${FD}
    send {enter}
    send {shift}
    return


:*:hisf,::
	send, {raw}$(fc -l -n|fzf)
	return

:*:fd,::        
    send, {raw}"${FD}"
    return

:*:so,::
    SwitchEng() 
    send, {raw}source "${FD}"
    return

:*:s,::      ;编辑搜索的内容
    SwitchEng() 
    send, {raw}/mnt/c/Program\ Files/Sublime\ Text/sublime_text.exe "${FD}"
    return

:*:w,::      ;编辑搜索的内容
    SwitchEng() 
    send, {raw}/mnt/f/Program\ Files\ \(x86\)/Kingsoft/WPS\ Office/11.8.2.8411/office6/wpsoffice.exe "${FD}"
    return
 

:*:vim ,::      ;编辑搜索的内容
    SwitchEng() 
    send, {raw}vim "${FD}"
    return
:*:c,::      ;编辑搜索的内容
    SwitchEng() 
    send, {raw}code "${FD}"
    return
:*:cd ,::
    SwitchEng() 
    send, {raw}cd "${FD`%/*}" && ls
    return

