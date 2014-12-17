require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "Chef Client" do

  it "is running" do
    expect(service("chef-client")).to be_running
  end

end