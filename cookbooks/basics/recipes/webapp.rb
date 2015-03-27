#package git for clone
package 'git'

#LIST OF FOLDER
app_folder = "/srv/mywebsite"

# FOLDER
directory "#{app_folder}" do
  action :create
end

# Application
git "#{app_folder}" do
  repository "git://github.com/thiagovsk/static_site.git"
  revision "master"
  checkout_branch "master"
  action :checkout
end
