#LIST OF FOLDER
app_folder = "/srv/mywebsite"

# FOLDER
directory "#{app_folder}" do
  action :create
end

execute "git clone" do
  command "cd #{app_folder} && git clone https://github.com/thiagovsk/static_site.git ."
end
