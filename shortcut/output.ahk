:*:bbmc,::
sendByClipboard("bitbake obmc-phosphor-image")
return
:*:bmc,::
sendByClipboard("obmc-phosphor-image")
return
:*:ebmcp,::
sendByClipboard("export TEMPLATECONF=meta-ibm/meta-palmetto/conf  && . openbmc-env")
return
:*:zhongwen,::
sendByClipboard("(.[一-龥]+)|([一-龥]+.)")
return
:*:gita,::
sendByClipboard("git add . && git commit --no-verify && git push --set-upstream")
return
:*:ahk,::
sendByClipboard(":*:tt,::")
return
:*:fd,::
sendByClipboard("$FD")
return
:*:pg,::
sendByClipboard("$pg")
return
:*:vm,::
sendByClipboard("sudo /sbin/mount.vboxsf work_mount ~/work_mount/")
return
