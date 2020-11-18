Vagrant.configure("2") do |config|

    config.vm.box = "ubuntu/bionic64"

    config.vm.provider "virtualbox" do |v|
        v.memory = 2048
        v.name = "Docker"
    end

    config.vm.define "Docker" do |v|
        v.vm.network "public_network", ip: "192.168.3.50"
    end
end