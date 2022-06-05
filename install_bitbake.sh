
#wget http://git.openembedded.org/bitbake/snapshot/bitbake-1.17.0.tar.gz
#tar zxpvf bitbake-1.17.0.tar.gz


#export PATH=/home/cxy/Repository/BitBake/bitbake/bin:$PATH

cd /home/vagrant/

git clone git://git.openembedded.org/bitbake

sudo apt-get -y install gawk wget git-core diffstat unzip texinfo gcc-multilib \
 build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
 xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev \
 xterm

#mv bitbake_master bitbake

export PATH=/home/vagrant/bitbake/bin:$PATH



