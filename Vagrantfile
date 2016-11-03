# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version '>= 1.5.0'

Vagrant.configure('2') do |config|
  config.vm.hostname = 'jruby-mm-test-berkshelf'
  if Vagrant.has_plugin?("vagrant-omnibus")
    config.omnibus.chef_version = 'latest'
  end

  config.vm.box = 'bento/ubuntu-14.04'
  config.vm.network :private_network, type: 'dhcp'
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      'recipe[jruby_mm_test::default]'
    ]
  end
end

