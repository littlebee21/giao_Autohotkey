:*:f,::
    send {raw}export FP=$(fzf --preview 'cat {}') && echo ${FP}
    send {enter}
    return

:*:ff,::
    send {raw}export FP=$(find ~/work_mount/docs |fzf --preview 'cat {}') && echo ${FP}
    send {enter}
    return

:*:hisf,::
	send, {raw}$(fc -l -n|fzf)
	return

:*:fp,::        
    send, {raw}${FP}
    return
:*:daxiao,::       ;查看文件夹的大小
	send, {raw}'du -h --max-depth=1 ./'
	return 


:*:vim ,::      ;编辑搜索的内容
    send, {raw}vim "${FP}"
    return
:*:c ,::      ;编辑搜索的内容
    send, {raw}code "${FP}"
    return
:*:cd ,::        
    send, {raw}cd "${FP`%/*}" && ls
    return