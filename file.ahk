;####### 打开文件夹 和 文件 ###################
    :*:\c:: ;使用code打开剪切板的，everything选中的目录
        code = F:\Users\gao\AppData\Local\Programs\Microsoft VS Code\Code.exe
        send ^c
        sleep 100
        send ^c
        file = %clipboard%
        Run,%code% "%file%"
        return

    :*:\b:: ;cmder bash打开对应文件内容
        send ^c
        ;ActivateAndOpen("TOE9G11","F:\software\cmder_mini\vendor\conemu-maximus5\ConEmu64.exe")
        clipboard = %clipboard%
        ;StringReplace, Clipboard, Clipboard, `\, /, All
        sleep 500
        send {ctrl}{insert}
        return
