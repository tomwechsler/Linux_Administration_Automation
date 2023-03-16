#Working on ubuntu

#Update the metadata
sudo apt-get update

#Add the terraform repo
sudo apt-get install -y gnupg software-properties-common curl

curl https://apt.releases.hashicorp.com/gpg | gpg --dearmor > hashicorp.gpg
sudo install -o root -g root -m 644 hashicorp.gpg /etc/apt/trusted.gpg.d/
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

#Install terraform
sudo apt install terraform

#Check the version
terraform version

#Install autocomplete
terraform -install-autocomplete

#Read the .bashrc file
source .bashrc

#Check the version with tab completion
terraform version

https://learn.hashicorp.com/tutorials/terraform/install-cli
We stick with Ubuntu and add in the Terraform repositories before installing.