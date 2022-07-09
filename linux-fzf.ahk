:*:f ,::
    send {raw}export FP=$(fzf) \ echo $(FP)
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
:*:code ,::      ;编辑搜索的内容
    send, {raw}code "${FP}"
    return
:*:cd ,::        
    send, {raw}cd "${FP`%/*}" && ls
    return