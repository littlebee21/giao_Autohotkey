;所有的缩写


:*:pr,::printf("$$$$$$$$$，func = %s, line = %d $$$$$$$$$$$ \n", __func__, __LINE__); //test



;正则表达式
:*:zhongwen,::(.[\u4E00-\u9FA5]+)|([\u4E00-\u9FA5]+.)
:*:konghang,::^\s*(?=\r?$)\n


;file
:*:gc,::gaocache.txt



:*:i18,::
    send, {raw}{{ $t('') }}
    return