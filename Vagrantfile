# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"
  Dir.glob("provision/*.sh").each do |script|
    config.vm.provision :shell, path: script
  end

  config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
     vb.memory = "4096"
  end

config.vm.network "forwarded_port", guest: 3838, host: 3838
config.vm.network "forwarded_port", guest: 8888, host: 8888

if Vagrant.has_plugin?("vagrant-proxyconf")
  puts "Vagrant-proxyconf plugin found..."
  if ENV["http_proxy"]
    puts "Setting 'http_proxy'..."
    config.proxy.http    = ENV["http_proxy"]
  end
  if ENV["https_proxy"]
    puts "Setting 'https_proxy'..."
    config.proxy.https    = ENV["https_proxy"]
  end
  if ENV["no_proxy"]
    puts "Setting 'no_proxy'..."
    config.proxy.no_proxy = ENV["no_proxy"]
  end
end
end
