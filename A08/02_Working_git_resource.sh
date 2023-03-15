#Working on ubuntu

ls

#Create a project path
mkdir -p ~/cookbooks/repo/recipes

#Our first recipes
vim ~/cookbooks/repo/recipes/default.rb

git "#{ENV['HOME']}/Linux_Administration_Automation/" do
  repository 'https://github.com/tomwechsler/Linux_Administration_Automation.git'
  revision 'main'
  action :sync
end

#Save and exit

#Lets give a try (-z working locally; -o overwirting the node list)
chef-client -z -o repo

#Did it work
ls Linux_Administration_Automation

#Run again
chef-client -z -o repo


Ruby adds a little complexity compared with YAML, however, we can create a
recipe to clone the course git repo.