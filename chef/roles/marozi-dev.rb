name 'marozi-dev'
description 'environment for developing the marozi app'

run_list 'recipe[build-essential]',
  'recipe[git]',
  'recipe[mongodb]',
  'recipe[zsh]',
  'recipe[ruby]'

override_attributes({'ruby' => {'username' => 'vagrant'}})