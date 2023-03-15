#Working on ubuntu

#Create directory path
mkdir -p ~/cookbooks/install/recipes

#Create the file
vim ~/cookbooks/install/recipes/default.rb

package 'tree' do
  action :install
end

#Save and exit

#Run it
sudo chef-client -z -o install

#Edit the file
vim ~/cookbooks/install/recipes/default.rb

package %w(vim zsh tree bash-completion) do
  action :install
end

#Save and exit

#Run it again
sudo chef-client -z -o install

#Did it work
tree cookbooks



When working with resources that need privileges, we run the chef client with
sudo elevation. We can refer to a list of packages.