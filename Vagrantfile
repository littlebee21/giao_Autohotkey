Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu1804"

  config.vm.hostname = "hostname"   #定义虚拟机名字
  config.vm.network "private_network", ip: "192.168.9.30" #默认就是22
  #config.vm.network "public_network", bridge: "en1: Wi-Fi (AirPort)"
  #config.vm.network "public_network", ip: "192.168.9.16"
  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.synced_folder "F:/share", "~/work"

  #SSH相关配置
  #config.ssh.username = "gao"   #设置默认ssh用户（默认用户是vagrant）
  #config.ssh.password = "1"     #设置默认ssh密码（默认密码是vagrant）
  #config.ssh.port = 24          #设置ssh端口
  
  #setting
  config.vm.provider "virtualbox" do |v|
    v.gui = false         #启动时，不显示virtualbox gui
    #v.name = "my_vm"     #在virtualbox中显示的名字
    v.cpus = 2            #指定虚拟机内核数
    v.memory = "2048"     #指定虚拟机内存
  end

  #setup
  #config.vm.provision "shell", path: "script.sh"
end
