; 使用方法因为总是 
;最常用且通用的三个切换工具是。
;windows+数字键其实是可以高频使用的快捷键，不要将他遗忘
;参考文档如何进行效率，交互，eg vws就是命令，使用编程的命令空间-操作的方式


:*:sssb\::
        ActivateAndOpen("Sublime Text","C:\Program Files\Sublime Text\sublime_text.exe")
        return
:*:awx\::
            ActivateAndOpen("WeChat","F:\Program Files (x86)\Tencent\WeChat\WeChat.exe")
:*:avb\::
            ActivateAndOpen("VirtualBox","C:\Program Files\Oracle\VirtualBox\VirtualBox.exe")
:*:awps\::
            ActivateAndOpen("WPS","C:\Program Files (x86)\Kingsoft\WPS Office\11.8.2.8411\office6\wps.exe")
:*:apdf\::
            ActivateAndOpen("PDF","C:\Users\gao\AppData\Local\SumatraPDF\SumatraPDF.exe")
:*:awm\::
            ActivateAndOpen("WinMerge","C:\Program Files (x86)\WinMerge\WinMergeU.exe")
:*:akeil\::
            ActivateAndOpen("μVision4","C:\Keil\UV4\Uv4.exe")
:*:bwp\::
            ActivateAndOpen("BaiduNetdisk","C:\Users\gao\AppData\Roaming\Baidu\BaiduNetdisk\BaiduNetdisk.exe")

; 当前的alt的快捷键的方式能比字母手写的方式更快并且符合之前的思维方式
LAlt & q::
            ActivateAndOpen("wsl","D:\Program Files\Microsoft VS Code\Code.exe D:\share\gshell\vscode-space\wsl.code-workspace")
            return
LAlt & w::
            ActivateAndOpen("203","D:\Program Files\Microsoft VS Code\Code.exe D:\share\gshell\vscode-space\203-workspace.code-workspace")
            return