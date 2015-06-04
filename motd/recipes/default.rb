#
# Cookbook Name:: motd
# Recipe:: default
#

template '/etc/motd' do
  source 'server-info.erb'
  mode   '0644'
end

