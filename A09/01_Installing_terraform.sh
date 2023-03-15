#Working on ubuntu

#Update the metadata
sudo apt-get update

#Add the terraform repo
sudo apt-get install -y gnupg software-properties-common curl

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com (lsb_release -cs) main"

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