;sourceinsight的代码搜索
:*:sources1,::
    send {raw}filter lang:vue 
    return
:*:sources2,::
    send {raw}filter lang:vue -file:tests file:web/ui/
    return


;github的代码搜索
:*:githubs1,::
    send {raw}static filename:*.json language:C++
    return


;google搜索
:*:googles1,::
    send {raw}static site:google.com
    return
