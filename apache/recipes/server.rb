#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#

package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
    content "<h1>Hola Capullos! (created by Chef)</h1>
             <h2>IPADDRESS: #{node['ipaddress']}</h2>
             <h2>HOSTNAME : #{node['hostname']} </h2>"
end

service 'httpd' do
  action [ :enable, :start ]
end
