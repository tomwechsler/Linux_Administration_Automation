#Working on openSUSE

#We get the list of the modules
sudo salt-call --local sys.list_modules 2>/dev/null

#List the functions from a module
sudo salt-call --local sys.list_functions pkg 2>/dev/null

#Information about the module and function
sudo salt-call --local sys.doc pkg.install 2>/dev/null

#Install the vim-data package
sudo salt-call --local pkg.install vim-data 2>/dev/null

sudo salt-call --local pkg.install vim-data 2>/dev/null #Nothing happen

#Search for an other module
sudo salt-call --local sys.list_modules | grep host

#List the functions from a module
sudo salt-call --local sys.list_functions hosts 2>/dev/null

#Edit the host file
sudo salt-call --local hosts.add_host 8.8.8.8 google 2>/dev/null

ping google


As well as web documentation, Salt ships with extensive command line
documentation for the modules and functions. Here, we list help for the Remote
Execution modules.