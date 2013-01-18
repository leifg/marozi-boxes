name 'base'
description 'setup environment for development system'

run_list 'recipe[bootstrap]'

override_attributes({
  :bootstrap => {
    :user => 'vagrant',
    :group => 'vagrant',
    :dotfiles => {
      :ref => 'marozi' }
    }
  })