;shell脚本记忆名字是记忆不下来的需要进行提示
;输入完b，之后就使用提示功能完成完成的代码运行
;效率肯定是比直接输入命令行的方式低, 高频使用的内容可以设置成简写脚本的形式

:*:b,::bash ~/work_mount/gshell/

;git_pull_all.sh
;git_push_all.sh
;git_push.sh


;lsx_client.sh
;modify_openBMC_config.sh
;openbmc_change_dhcp.sh
;openbmc_change_static.sh

;install_static_ip_for_home.sh
;install_static_ip_for_work131.sh

:*:rhp,::run_openBMCi_by_port_home131_post.sh
:*:rh,::run_openBMCi_by_port_home131.sh
:*:rwp,::run_openBMCi_by_port_work131_post.sh
:*:rw,::run_openBMCi_by_port_work131.sh

;scp_openbmc_serve.sh
;scp_openbmc_test.sh
