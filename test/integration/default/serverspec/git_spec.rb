require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "Git Client" do

  it "is installed" do
    expect(package('git')).to be_installed
  end

end