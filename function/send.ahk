sendByClipboard(ByRef str){
    clip:=Clipboard
    clipboard:=str
    send ^v
    Clipboard:=clip
}
