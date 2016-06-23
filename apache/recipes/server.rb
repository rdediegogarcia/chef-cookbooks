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
    content '<h1>Hello World! (created by Chef)</h1>'
end

service 'httpd' do
  action [ :enable, :start ]
end
