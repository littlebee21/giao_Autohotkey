:*:f,::
    SwitchEng() 
    send {raw}export FD=$(fzf --preview 'cat {}') && echo ${FD}
    send {enter}
    send {shift}
    return

:*:s,::
    SwitchEng() 
    send {raw}export FK=
    return

:*:ff,::
SwitchEng()
Var =
(
export FD=$( \
locate ${FK} \
| grep -v ".git" \
| fzf --preview 'cat {}' \
`) && echo ${FD}
)
send {raw}%var%
send {enter}
return


:*:hisf,::
	send, {raw}$(fc -l -n|fzf)
	return

:*:fd,::        
    send, {raw}"${FD}"
    return

:*:b ,::
    SwitchEng() 
    send, {raw}bash "${FD}"
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

