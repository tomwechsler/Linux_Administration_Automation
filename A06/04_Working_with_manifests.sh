#Working on ubuntu

cat .vimrc #If needed set: set bg=dark modeline

#Create a working directory
mkdir puppet
cd ~/puppet

#Create the first manifest
vim message.pp 

# vim: set ft=ruby ts=2 sw=2 et ai :
notify {'Hello World':
  message => "Welcome to puppet"
}

#Check the syntax
puppet parser validate message.pp

#What would be executed (--noop = No Operation)
puppet apply --noop message.pp

#Run the manifest
puppet apply message.pp

#Create a new manifest with the first line from the message.pp
head -n1 message.pp > user.pp

puppet resource user $USER >> user.pp #We use the content as template

#Edit the manifest
vim user.pp

# vim: set ft=ruby ts=2 sw=2 et ai :
user { 'Josy':
  ensure  => 'present',
  comment => 'Josy Cat',
  groups  => ['sudo'],
  home    => '/home/josy',
  shell   => '/bin/bash',
}

#Save and exit

#Run the manifest
sudo puppet apply user.pp

getent passwd josy


Manifests make up the basis of Puppet configuration. They are a form of Ruby
file, so we may choose to add the modeline.