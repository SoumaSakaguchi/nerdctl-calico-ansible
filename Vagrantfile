# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2204"
  config.ssh.insert_key = false
  config.ssh.private_key_path = "~/.vagrant.d/insecure_private_key"
  config.vm.provision "file", source: "~/.vagrant.d/insecure_private_key", destination: "/home/vagrant/.ssh/id_rsa"
  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    chmod 600 $HOME/.ssh/id_rsa
  SHELL

  config.vm.define "calico-node1" do |node|
    node.vm.network :private_network, ip: "192.168.22.10"
    node.vm.network :forwarded_port, guest: 22, host: 2210, host_ip: '127.0.0.1', id: "ssh"
  end

  config.vm.define "calico-node2" do |node|
    node.vm.network :private_network, ip: "192.168.22.11"
    node.vm.network :forwarded_port, guest: 22, host: 2211, host_ip: '127.0.0.1', id: "ssh"
  end
end
