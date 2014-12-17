# See http://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
user = ENV['USER']
org_name = 'sgoings'
log_level                :info
log_location             STDOUT

node_name                user
client_key               "#{ENV['HOME']}/.chef/#{user}.pem"
validation_client_name   "#{org_name}-validator"
validation_key           "#{ENV['HOME']}/.chef/#{org_name}-validator.pem"

chef_server_url          "https://api.opscode.com/organizations/#{org_name}"
syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntax_check_cache"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )

cookbook_copyright "Seth Goings"
cookbook_license "apachev2"
cookbook_email "me@sethgoings.com"
