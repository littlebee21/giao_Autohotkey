#IfWinActive ahk_exe wps.exe
$^b::    ;对当前行进行加粗
    send, {home}
    send, {shift down}
    send, {end}
    send, {shift up}
    send, ^b
    return 
$^x::    ;对当前行进行剪切，只有在编辑的过程中才进行剪切，大部分都是复制
    send, {home}
    send, {shift down}
    send, {end}
    send, {shift up}
    send, ^x
    return 
#IfWinActive
