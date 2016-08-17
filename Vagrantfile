# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-6.7-i386"
  config.vm.network "forwarded_port", guest: 80, host: 8001
  config.vm.network "forwarded_port", guest: 443, host: 8443

  ## For masterless, mount your salt file root
  config.vm.synced_folder "salt/roots/", "/srv/salt/"

  ## Use all the defaults:
  config.vm.provision :salt do |salt|

    salt.masterless = true
    salt.minion_config = "salt/minion"
    salt.run_highstate = true

  end
end
