# !bin/bash/


echo "hello"

# 显示和配置当前项目的   github
git config --global user.name "littlebee21"
git config --global user.email "805976520@qq.com"

git config --list

# 生成ssh 然后复制到 github
# 复制的内容在 .ssh 文件夹中
# 复制对应的 id_rsa.pub
ssh-keygen -t rsa -C "805976520@qq.com"

# 测试是否连接成功
ssh -T git@github.com
