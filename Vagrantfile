# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = 'precise'
  config.vm.share_folder 'private', '~/private', "./private"
  config.vm.share_folder 'projects', '~/projects', "./projects"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "chef/cookbooks"
    chef.roles_path = 'chef/roles'

    chef.add_role 'marozi-dev'
  end
end