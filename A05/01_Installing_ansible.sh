#Working on ubuntu


sudo apt update

sudo apt install ansible

ansible --version

ansible localhost -m ping



Ansible can be installed as package from standard repositories in Ubuntu, or in
Red Hat based variants, from EPEL. It is also possible to install using pip/pip3
from the Python repos, giving you the latest version. We install Ansible on the
Ubuntu host as it has a later version of Python. The sshpass utility allows for
password caching.