#Working on alma

#Create an ansible working directory
mkdir ansible

cd ansible

#Check the version
ansible --version

#Create the inventory and the ansible configuration file
vim ansible.cfg

[defaults]
remote_user = vagrant
inventory = inventory

[privilege_escalation]
become = true

#Save and exit

#Check the version (We see now the path to .cfg file)
ansible --version

#List the config
ansible-config view

ansible-config dump --only-changed

#Create the inventory (We use the IPs because the name resolution was not prepared)
vim inventory

[redhat]
192.168.56.101 ansible_connection=local
[ubuntu]
192.168.56.102
[opensuse]
192.168.56.103

#Exit the editor

#List the inventory
ansible --list all

ansible --list ungrouped

ansible --list server

#List the inventory
ansible-inventory --list

#List the inventory as graph
ansible-inventory --graph

#List the inventory in yaml format
ansible-inventory --list --yaml

#Test against all systems
ansible all -m ping

#Install the tree package (-m module)
ansible all -m package -a "name=tree state=present"

#We can run the same line. If there is no change, nothing will be done => Idempotent
ansible all -m package -a "name=tree state=present"

#Remove tree
ansible all -m package -a "name=tree state=absent"


We can now manage all hosts in the inventory. Although they are all Linux, they
would use 3 different package managers, but we do not need to concern 
ourselves with that using Ansible.

-b: elevate privileges -a: module arguments