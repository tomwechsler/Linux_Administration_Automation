#Working on ubuntu

#For later, we create a project folder
mkdir ~/puppet 

cd ~/puppet 

#Start a root session
sudo -i

#Execute commands without a manifest (-e for execute)
puppet apply -e 'package { "chrony": ensure => "installed" }'

#Configure the service
puppet apply -e 'service { "chrony": ensure => "running", enable => true }'

#List the time servers
chronyc sources

#The hosts in /etc
puppet resource host

#Edit the host file
puppet apply -e 'host { "alma": ip => "192.168.56.101" }'

puppet apply -e 'host { "opensuse": ip => "192.168.56.103" }'

#Did it work
puppet resource host




Puppet can apply configurations directly from the CLI. We will need to elevate
privileges if required by the underlying operation. Note keyword differences in
the language compared to Ansible.