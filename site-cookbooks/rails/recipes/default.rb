#
# Cookbook Name:: rails
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

gem_package "rails" do
  #options '--no-ri --no-rdoc'
  source '/usr/local/rvm/rubies/ruby-2.3.1/bin/gem'
  action :install
end

