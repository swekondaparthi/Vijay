#
# Cookbook:: enterprise-chef
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package_url = node['enterprise-chef']['url']
package_name = ::File.basename(package_url)
package_local_path = "#{Chef::Config[:file_cache_path]}/#{package_name}"

remote_file package_local_path do
    source package_url
end

package package_name do
    source package_local_path
    provider Chef::Provider::Package::Rpm
    notifies :run, 'execute[reconfigure-chef-server]'
end

execute 'reconfigure-chef-server' do
    command 'private-chef-ctl reconfigure'
    action :nothing
end
