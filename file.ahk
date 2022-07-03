;####### 打开文件夹 和 文件 ################### 
     :*:\c:: ;使用code打开剪切板的，everything选中的目录
        code = F:\Users\gao\AppData\Local\Programs\Microsoft VS Code\Code.exe
        send ^c
        sleep 100
        send ^c
        file = %clipboard%
        Run,%code% "%file%"
        return