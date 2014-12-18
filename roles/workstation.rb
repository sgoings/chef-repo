name "workstation"
description "My ideal workstation setup"

run_list(
  "role[base]",
  "recipe[packages]",
  "recipe[chef-dk]",
  "recipe[vagrant]",
  "recipe[sublime-text]",
  "recipe[virtualbox]",
  "recipe[homesick::data_bag]",
  "recipe[chrome]",
  "recipe[gem_installer]"
  #"recipe[vmware_workstation]"
)

default_attributes(
  "vagrant" => {
    "url" => "https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.1_x86_64.deb",
    "checksum" => "6615b95fcd8044e2f5e1849ec1004df5e05e390812558ec2c4b3dcec541b92da"
  },
  "packages" => {
    'hicolor-icon-theme' => 'install'
  }
)
