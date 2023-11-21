sendByClipboard(ByRef str){
    clip:=Clipboard
    Clipboard:=str
    send ^v
    sleep 100
    Clipboard:=clip
}


sendFile(myPath) {
    FileRead, Clipboard, %A_ScriptDir%%myPath%
    send ^v
}