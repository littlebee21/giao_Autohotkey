sendByClipboard(ByRef str){
    clip:=Clipboard
    Clipboard:=str
    send ^v
    sleep 100
    Clipboard:=clip
}


 

