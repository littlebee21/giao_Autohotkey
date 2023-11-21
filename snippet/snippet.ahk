;所有的缩写
:*:ahk,::
    send, {raw}:*:tt,::
    return

:*:pr,::printf("$$$$$$$$$，func = %s, line = %d $$$$$$$$$$$ \n", __func__, __LINE__); //test
:*:tm,::
    send {raw}txt|md
    return

:*:i18,::
    send, {raw}{{ $t('') }}
    return
