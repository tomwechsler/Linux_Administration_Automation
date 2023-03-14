#Working on ubuntu

#Create a new manifest
head -n1 message.pp > noroot.pp

#Check the PermitRoot Login in SSH
sudo grep PermitRoot /etc/ssh/sshd_config

#Edit the manifest
vim noroot.pp

# vim: set ft=ruby ts=2 sw=2 et ai :
service { 'sshd':
  ensure => 'running',
  enable => true,
 }
file_line { 'root_ssh':
  path => '/etc/ssh/sshd_config',
  ensure => 'present',
  line => 'PermitRootLogin no',
  match => '^PermitRootLogin',
  notify => Service['sshd'],
 }

#Save and exit

#Check the syntax
puppet parser validate noroot.pp

#Use the manifest
sudo puppet apply noroot.pp 2>/dev/null

#Check the PermitRoot Login in SSH
sudo grep PermitRoot /etc/ssh/sshd_config