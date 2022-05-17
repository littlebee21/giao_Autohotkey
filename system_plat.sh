#安装nfs
#安装tftp

#所有的工作目录
uboot="/mnt/f/share/uImage"
dtb="/mnt/f/share/exynos4412-fs4412.dtb"
rootfs="/mnt/f/share/rootfs.tar.xz"

tftp_path="/tftpboot"
nfs_path="/opt/4412"


cp $(uboot) $(dtb) $(tftp_path)

sudo tar xvf $(rootfs) -C $(nfs_path)
sudo chmod 777 $(nfs_path)/rootfs


