:*:ck\::    ;切换光标到vscode的编辑页面
    ActivateAndOpen("Code","D:\Program Files\Microsoft VS Code\Code.exe")
    send ^1
    return
    


Alt & m::  ;打开vscode窗口
    GetKeyState, state, shift
    if state = D
    {
        ActivateAndOpen("Code","D:\Program Files\Microsoft VS Code\Code.exe")
        send ^j
        send ^j
    }
    return