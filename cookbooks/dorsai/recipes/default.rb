#
# Cookbook Name:: dorsai
# Recipe:: default
#
# Copyright 2014, dorsai
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'ruby_build'
include_recipe 'rbenv::system'
include_recipe 'nginx'

template "/etc/nginx/sites-available/#{node['dorsai']['app_name']}" do
  source 'dorsai.erb'
end

nginx_site node['dorsai']['app_name'] do
  enable true
end
