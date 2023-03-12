#Working on the host

#Check the vagrant status and destroy the vm
vagrant status

vagrant destroy --force

#Copy a file from the cloned repo
cp ~/Linux_Administration_Automation/apache/web.html web

cd web

cat index.html

cd ..

#Edit the Vagrantfile
vim Vagrantfile

# vi: ft=ruby:ts=2:ai:sw=2
$script = <<-SCRIPT 
sudo apt-get update
sudo apt-get install -y apache2
SCRIPT
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.provision "shell", inline: $script
  config.vm.synced_folder "web/", "/var/www/html"
  config.vm.network "forwarded_port", guest: 80, host: 8080
end

#Save and exit

#Now we need the guest plugin
vagrant plugin install vagrant-vbguest

#Build the vm
vagrant up

vagrant port

#Curl the index.html
curl http://localhost:8080



Plugins add functionality, here we allow vagrant to install Virtual Box Guest
Additions if needed in the virtual machine. We need this for synced folders to
work properly.