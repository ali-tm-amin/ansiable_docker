Vagrant.configure("2") do |config|

    # creating are Ansible controller
    config.vm.define "controller" do |controller|
    
    controller.vm.box = "bento/ubuntu-18.04"
    
    controller.vm.hostname = 'controller'
    
    controller.vm.network :private_network, ip: "192.168.56.12"
    controller.vm.synced_folder "./provisions", "/home/vagrant/controller"
    controller.vm.provision "shell", path: "./provisions/controller_config.sh"
    #config.hostsupdater.aliases = ["development.controller"] 
    
    end
end