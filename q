[1mdiff --git a/shortcut/linux-fzf.ahk b/shortcut/linux-fzf.ahk[m
[1mindex 1cef0af..358f918 100644[m
[1m--- a/shortcut/linux-fzf.ahk[m
[1m+++ b/shortcut/linux-fzf.ahk[m
[36m@@ -6,22 +6,17 @@[m
     return[m
 [m
 :*:s,::[m
[31m-    SwitchEng() [m
[31m-    send {raw}export FK=[m
[31m-    return[m
[31m-[m
[31m-:*:ff,::[m
 SwitchEng()[m
 Var =[m
 ([m
 export FD=$( \[m
[31m-locate ${FK} \[m
[31m-| grep -v ".git" \[m
[31m-| fzf --preview 'cat {}' \[m
[32m+[m[32mlocate work_mount \[m[41m[m
[32m+[m[32m| fzf \[m[41m[m
 `) && echo ${FD}[m
 )[m
 send {raw}%var%[m
 send {enter}[m
[32m+[m[32msend {shift}[m[41m[m
 return[m
 [m
 [m
[1mdiff --git "a/shortcut/linx-fzf.\345\244\207\344\273\275" "b/shortcut/linx-fzf.\345\244\207\344\273\275"[m
[1mindex 217a8e2..dbc7987 100644[m
[1m--- "a/shortcut/linx-fzf.\345\244\207\344\273\275"[m
[1m+++ "b/shortcut/linx-fzf.\345\244\207\344\273\275"[m
[36m@@ -12,4 +12,26 @@[m
 [m
 :*:daxiao,::       ;查看文件夹的大小[m
 	send, {raw}'du -h --max-depth=1 ./'[m
[31m-	return [m
\ No newline at end of file[m
[32m+[m	[32mreturn[m[41m [m
[32m+[m
[32m+[m
[32m+[m[32m:*:s,::[m
[32m+[m[32m    SwitchEng()[m[41m [m
[32m+[m[32m    send {raw}export FK=[m
[32m+[m[32m    return[m
[32m+[m
[32m+[m
[32m+[m[32m:*:s,::[m
[32m+[m[32mSwitchEng()[m
[32m+[m[32mVar =[m
[32m+[m[32m([m
[32m+[m[32mexport FD=$( \[m
[32m+[m[32mlocate work_mount \[m
[32m+[m[32m| grep -v ".git\|png\|jpg" \[m
[32m+[m[32m| fzf \[m
[32m+[m[32m`) && echo ${FD}[m
[32m+[m[32m)[m
[32m+[m[32msend {raw}%var%[m
[32m+[m[32msend {enter}[m
[32m+[m[32msend {shift}[m
[32m+[m[32mreturn[m
\ No newline at end of file[m
