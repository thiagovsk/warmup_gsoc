# nginx package
package 'nginx' do
  action :install
end

#start nginx
service 'nginx' do
  action :enable
  supports :restart => true
end

template '/etc/nginx/conf.d/webapp.conf' do
  owner 'root'
  group 'root'
  mode  0644
  notifies :restart, 'service[nginx]'
end
