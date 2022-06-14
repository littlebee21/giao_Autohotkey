#IfWinActive ahk_exe wps.exe
$^b::    ;对当前行进行加粗
    send, {home}
    send, {shift down}
    send, {end}
    send, {shift up}
    send, ^b
    return 

#IfWinActive
