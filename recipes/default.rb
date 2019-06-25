#
# Cookbook Name:: up_limits
# Recipe:: default
#

# Increaase global open file handle limits for all users.
#
set_limit '*' do
  type 'hard'
  item 'nofile'
  value node['up_limits']['nofile']
  use_system true
end

set_limit '*' do
  type 'soft'
  item 'nofile'
  value node['up_limits']['nofile']
  use_system true
end

