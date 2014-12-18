require 'serverspec'

# Required by serverspec
set :backend, :exec

describe command("homesick") do
  its(:exit_status) { should eq 0 }
end