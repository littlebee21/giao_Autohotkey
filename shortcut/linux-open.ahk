:*:fd,::        
    str ="${FD}"
    sendByClipboard(str)
    return

:*:so,::
    SwitchEng() 
    str = source "${FD}"
    sendByClipboard(str)
    return

:*:s,::      ;编辑搜索的内容
    SwitchEng() 
    str = /mnt/d/Program\ Files/Sublime\ Text/sublime_text.exe "${FD}"
    sendByClipboard(str)
    return

:*:w,::      ;编辑搜索的内容
    SwitchEng() 
    str = /mnt/f/Program\ Files\ \(x86\)/Kingsoft/WPS\ Office/11.8.2.8411/office6/wpsoffice.exe "${FD}"
    sendByClipboard(str)
    return
 

:*:vim,::      ;编辑搜索的内容
    SwitchEng() 
    str = vim "${FD}"
    sendByClipboard(str)
    return
:*:c,::      ;编辑搜索的内容
    SwitchEng() 
    str = code "${FD}"
    sendByClipboard(str)
    return
:*:cd,::
    SwitchEng() 
    str = cd "${FD`%/*}" && ls
    sendByClipboard(str)
    return

