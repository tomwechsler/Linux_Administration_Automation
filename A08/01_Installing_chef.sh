#Working on ubuntu

#Update the metadata
sudo apt update

#Install chef
sudo apt install chef

#The chef version
chef-client -v 2>/dev/null

#we disable the ruby warnings
export RUBYOPT='-W0'


Ubuntu ships with chef in the standard repositories.