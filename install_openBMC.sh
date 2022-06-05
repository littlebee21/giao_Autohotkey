#安装支持软件
sudo apt-get install -y git build-essential libsdl1.2-dev texinfo gawk chrpath diffstat

sudo apt-get install -y gawk wget git-core git diffstat unzip texinfo gcc-multilib build-essential chrpath socat cpio python python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pylint3 xterm sed cvs subversion help2man make gcc g++ desktop-file-utils libgl1-mesa-dev libglu1-mesa-dev mercurial autoconf automake groff curl lzop asciidoc npm meson ninja tree


sudo apt -y install git python3-distutils gcc g++ make file wget \
    gawk diffstat bzip2 cpio chrpath zstd lz4 bzip2


#克隆
git clone git@github.com:openbmc/openbmc.git


#在内部的脚本会有对应内容的路径不对,将绝对的路径改添加 poky
