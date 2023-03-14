#Working on ubuntu

#Update the metadata
sudo apt update

#Search for the package
sudo apt search puppet

sudo apt search '^puppet'

sudo apt search '^puppet$'

#Install puppet
sudo apt install -y puppet

#we get an ruby warning (Is known at the Ruby community)
puppet --version

#we disable the ruby warnings
export RUBYOPT='-W0'

#We use the help
puppet help

#Help about the resource
puppet describe user

#Check for a package
puppet resource package tree

#Check for a user
puppet resource user $USER


To maintain a simple overview of Puppet, we shall install just the Puppet Client,
know as the Agent. We can apply local configuration using the agent.