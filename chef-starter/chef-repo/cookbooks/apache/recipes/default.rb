#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package "apache2" do
    action:install
end

service "apache2" do
    action [ :enable, :start ]
end

#node.default["apache"]["indexfile"] = "index2.html"
#cookbook_file "/var/www/html/index.html" do
#    source node["apache"]["indexfile"]
#    mode "0644"
#end

execute "mv /etc/apache2/sites-enabled/000-default.conf /etc/apache2/sites-enabled/000-default.conf.disabled" do
    only_if do
        File.exist?("/etc/apache2/sites-enabled/000-default.conf")
    end
    notifies :restart, "service[apache2]"
end

node["apache"]["sites"].each do |site_name,site_data|
    document_root="/etc/apache2/sites-enabled/#{site_name}"

template "/etc/apache2/sites-enabled/#{site_name}.conf" do 
    source "custom.erb"
    mode "0644"
    variables({
        :document_root=>document_root,
        :port=>site_data["port"]
    })
    notifies :restart, "service[apache2]"
end

directory document_root do
    mode "0755"
    recursive true
end

template "#{document_root}/index.html" do
    source "index.html.erb"
    mode "0644"
    variables({
        :site_name=>site_name,
        :port=>site_data["port"]
    })
    end
end