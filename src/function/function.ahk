copy(){
    send ^c
}

select_line(){
    send, {home}
    send, {shift down}
    send, {end}
    send, {shift up}
}