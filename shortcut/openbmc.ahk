;openbmc相关
:*:exportbmc1,::export TEMPLATECONF=meta-ibm/meta-palmetto/conf 
:*:exportbmc2,::. openbmc-env
:*:bbmc,:: bitbake obmc-phosphor-image
:*:bmc,:: obmc-phosphor-image

:*:ebmcp,::export TEMPLATECONF=meta-ibm/meta-palmetto/conf  && . openbmc-env
:*:ebmcr,::export TEMPLATECONF=meta-ibm/meta-romulus/conf  && . openbmc-env
:*:ebmcl,::. setup evb-ast2600


