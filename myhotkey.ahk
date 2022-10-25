﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory

#include %A_ScriptDir%\shortcut\markdown-snippet.ahk
#include %A_ScriptDir%\shortcut\snippet.ahk   ;快捷键工具
#include %A_ScriptDir%\shortcut\route.ahk
#include %A_ScriptDir%\shortcut\route-openbmc.ahk
#include %A_ScriptDir%\shortcut\route-openbmc-romlus.ahk
#include %A_ScriptDir%\shortcut\route-openbmc-2600.ahk
#include %A_ScriptDir%\shortcut\route-wsl.ahk
#include %A_ScriptDir%\shortcut\route-ip.ahk
#include %A_ScriptDir%\shortcut\linux.ahk
#include %A_ScriptDir%\shortcut\openbmc.ahk
#include %A_ScriptDir%\shortcut\linux-fzf.ahk
#include %A_ScriptDir%\shortcut\javascript.ahk
#include %A_ScriptDir%\shortcut\scp.ahk
#include %A_ScriptDir%\shortcut\git.ahk
#include %A_ScriptDir%\shortcut\music.ahk
#include %A_ScriptDir%\shortcut\search.ahk
#include %A_ScriptDir%\shortcut\shell.ahk

#include %A_ScriptDir%\controller\application.ahk
#include %A_ScriptDir%\controller\everything.ahk
#include %A_ScriptDir%\controller\chrome.ahk
#include %A_ScriptDir%\controller\wps.ahk
#include %A_ScriptDir%\controller\vscode.ahk
#include %A_ScriptDir%\controller\windows.ahk
#include %A_ScriptDir%\controller\terminal.ahk
#include %A_ScriptDir%\controller\wsl.ahk
#include %A_ScriptDir%\controller\file.ahk
#include %A_ScriptDir%\controller\log.ahk
#include %A_ScriptDir%\controller\web.ahk
#include %A_ScriptDir%\controller\global.ahk

;#include test.ahk

;函数的集合
#include %A_ScriptDir%\function\function.ahk
#include %A_ScriptDir%\function\IME.ahk
#include %A_ScriptDir%\function\activeApplication.ahk
