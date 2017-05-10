Vagrant.configure("2") do |config|

  config.vm.define "ansibleserver" do |ansibleserver|
  	ansibleserver.vm.box = "ubuntu/trusty64"
  	ansibleserver.vm.hostname = "ansibleserver"
  	ansibleserver.vm.network "private_network", ip: "192.168.33.15"
  end

  config.vm.define "slave" do |slave|
  	slave.vm.box = "ubuntu/trusty64"
  	slave.vm.hostname = "slave"
  	slave.vm.network "private_network", ip: "192.168.33.25"
  	slave.vm.network "forwarded_port", guest: 80, host: 8082
  end

  config.vm.provision "shell" do |s|
    s.path = "configure.sh"
  end
end