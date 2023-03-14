#Working on alma

#(Optional)
vim .vimrc

autocmd FileType yaml setlocal ai et ts=2 sw=2 cuc cul

#Save and exit

#If yout get some locale warnings
export LC_ALL="en_US.UTF-8"

#Install the epel release
sudo dnf install -y epel-release

#Install python3
sudo dnf install -y python3

#If more then one python version is on the host
sudo alternatives --set python /usr/bin/python3

#Install Ansible
sudo dnf install -y ansible

#Install python arg-completion
sudo dnf install -y python3-argcomplete

#Set argcomplete
sudo activate-global-python-argcomplete

#Check the version
ansible --version

#Test
ansible localhost -m ping


Ansible can be installed as package from standard repositories in Ubuntu, or in
Red Hat based variants, from EPEL. It is also possible to install using pip/pip3
from the Python repos, giving you the latest version. We install Ansible on the
Ubuntu host as it has a later version of Python.