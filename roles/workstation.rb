name "workstation"
description "My ideal workstation setup"

run_list(
  "role[base]",
  "recipe[chef-dk]",
  "recipe[vagrant]",
  "recipe[sublime-text::default]",
  "recipe[virtualbox]"
)

default_attributes(
  "vagrant" => {
    "url" => "https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.1_x86_64.deb",
    "checksum" => "6615b95fcd8044e2f5e1849ec1004df5e05e390812558ec2c4b3dcec541b92da"
  }
)