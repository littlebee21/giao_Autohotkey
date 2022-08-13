;git命令

:*:gitf,::git remote set-url origin git@192.168.0.203:development/webui-vue.git
;git clone --branch color

;添加
:*:gita,::git add . && git commit --no-verify && git push --set-upstream
:*:gitc,::git commit --no-verify -m
:*:gitca,::git commit --amend

;推送到远端
:*:gitps,::git push origin bd
:*:gitpps,::git push origin bd:yc


;修改
:*:gitpl,::git pull origin yc           ;修改分支
:*:gitppl,::git pull origin yc:bd       ;修改指定分支
:*:gitch,::git checkout              ;切换分支



;查看
:*:gitga,::git diff && git stash ;查看工作区修改，查看暂存区修改，
:*:gitb,::git branch       ;查看git分支
:*:gitd,::git diff         ;查看缓存区和工作区区别
:*:gitlog,::git log --graph --decorate --oneline --all  


;清除
:*:gitrm,::git rm -r --cached           ;清除缓存区,缺少内容
:*:gitrsh,::git reset  --hard HEAD~      ;清除工作区 放弃代码
:*:gitrsm,::git reset  --mixed HEAD~      ;清除commit记录，回退递交记录
:*:gitcc,::git revert commit_id          ;撤销本次递交


;查找
:*:gitfind,::find -name *.rej      ;找到所有的冲突位置
:*:vgitdiff,::git add . && git diff --cached > ~/work_mount/caogao/master-  ;将内容存储到缓存区，然后将内容存放到特定的patch当中;
:*:fgitdiff,::git add . && git diff --cached > ~/patch/master-  ;将内容存储到缓存区，然后将内容存放到特定的patch当中;
