:*:bbmc,::
sendByClipboard("bitbake obmc-phosphor-image")
return
:*:bmc,::
sendByClipboard("obmc-phosphor-image")
return
:*:ebmcp,::
sendByClipboard("export TEMPLATECONF=meta-ibm/meta-palmetto/conf  && . openbmc-env")
return
:*:gita,::
sendByClipboard("git add . && git commit --no-verify && git push --set-upstream")
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
:*:wmnd,::
sendByClipboard("/mnt/d/share/data/docs/myNavigation/doc-")
return
:*:bxjb,::
sendByClipboard("编写脚本")
return
