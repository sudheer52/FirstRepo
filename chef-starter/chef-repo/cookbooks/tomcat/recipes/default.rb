#
# Cookbook Name:: tomcat
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
osname = node[:platform_family]
if osname == 'rhel' 
    package 'httpd'
elsif osname ==  'debian'
    package 'apache2'
 end

if osname == 'rhel'
  service 'httpd' do
    action [:enable, :start]
  end
end

