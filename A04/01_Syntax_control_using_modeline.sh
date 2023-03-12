#Working on the host

#We create a .vimrc
vim ~/.vimrc 

set modeline bg=dark

#Save and exit

#Open .vimrc again to see the coloring
vim .vimrc

#Create an vagrant project

mkdir -p ~/apache/web 

cd ~/apache

ls

#Create a new Vagtanfile
vagrant init --minimal ubuntu/focal64 

ls

#Open the file (no syntax support)
vim Vagrantfile

#Set the mode lime
sed -i '1i # vi: ft=ruby:ts=2:ai:sw=2' Vagrantfile

#Much better
vim Vagrantfile

#To proof, go to the end of line and hit enter
#Exit

vagrant up


Vagrant, as we have seen, can be used to deploy systems. This provides the OS,
using provisioners, we can further configure the system. The file format of a
Vagrantfile is Ruby. Adding a modeline can help vi/vim understand the syntax
and format.