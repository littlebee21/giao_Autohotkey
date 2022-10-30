;使用alt作为切换状态的按键

； c鼠标模式
RAlt & c::
    global model := "mouse"
    return


; z就是撤回到最原始的模式
RAlt & z::
    global model := "null"
    return
