#Working on ubuntu in a root session

sudo -i

#List the modules
puppet module list

#Download and install the modules
puppet module install -i /usr/share/puppet/modules puppetlabs/apache

#This includes the standard library (puppetlabs-stdlib)

#Install apapche
puppet apply -e "include apache"

ss -ntl #Port 80

curl loclhost



Predefined code can be downloaded as module from forge.puppet.com