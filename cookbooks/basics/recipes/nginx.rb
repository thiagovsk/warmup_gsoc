# nginx package
package 'nginx'

#start nginx 
service 'nginx' do
  action :enable
  supports :restart => true
end
