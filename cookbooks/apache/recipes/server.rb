#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2021 The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content "<h2>Hello World </h2>
  ipaddress: #{node['ipaddress']}
  hostname: #{node['hostname']}"
end

service 'httpd' do
  action [:start, :enable]
end
