require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "Google Chrome" do

  it "is installed" do
    expect(package("google-chrome-stable")).to be_installed
  end

end