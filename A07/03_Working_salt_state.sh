#Working on openSUSE

#List the state modules
sudo salt-call --local sys.list_state_modules 2>/dev/null

#List the functions of a state module
sudo salt-call --local sys.list_state_functions pkg 2>/dev/null

#The standard path for salt
sudo mkdir /srv/salt

#Set modeline
echo "set bg=dark modeline" >> ~/.vimrc

#Create a state file
vim common.sls

# vim: set ft=yaml ts=2 ai sw=2 et cul cuc :
Install_common_packages:
  pkg.installed:
    - pkgs:
      - rsync
      - vim-data
      - curl
Configure UK Time Zone on Salt Minions:
  timezone.system:
    - utc: True
    - name: Europe/Zurich

#Save and exit

#Copy the file
sudo cp common.sls /srv/salt

#Just a test
sudo salt-call --local state.sls common test-True 2>/dev/null

#Apply
sudo salt-call --local state.sls common 2>/dev/null

#Did it work
timedatectl


A state file defines the desired state of the system. We can install multiple
packages should be need. The vim-data package is required for syntax
highlighting.