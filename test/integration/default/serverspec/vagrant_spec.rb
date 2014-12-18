require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "VM Support" do

  it "Vagrant is installed" do
    expect(package("vagrant")).to be_installed
  end

end

describe command("virtualbox --help") do
  its(:exit_status) { should eq 0 }
end