name 'marozi-dev'
description 'environment for developing the marozi app'

run_list 'recipe[build-essential]',
  'role[base]',
  'recipe[mongodb]',
  'recipe[ruby]'

override_attributes({'ruby' => {'username' => 'vagrant'}})