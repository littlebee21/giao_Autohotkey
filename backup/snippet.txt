;所有的缩写
:*:ahk,::
    send, {raw}:*:tt,::
    return

:*:pr,::
:*:tm,::
    send {raw}txt|md
    return

:*:i18,::
    send, {raw}{{ $t('') }}
    return
