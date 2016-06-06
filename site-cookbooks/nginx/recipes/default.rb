#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#include_recipe "yum-epel"

package "nginx" do
     action :install
end
 
service "nginx" do
      action [:enable, :start]
end

template "nginx.conf" do
  path "/etc/nginx/nginx.conf"
  owner "root"
  group "root"
  mode 644
  notifies :restart, 'service[nginx]'
end
