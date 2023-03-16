#Working on ubuntu

#Install docker
sudo apt install -y docker.io

#Add vagrant to the docker group
sudo gpasswd -a $USER docker

#Exit the ssh session
exit

#Check
id

#Create working directory an switch into
mkdir terraform ; cd terraform

#Create the main.tf
vim main.tf

terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~>3.0.1"
    }
  }
}

provider "docker" {
  # Configuration options
}

#Save and exit

#Initialize terraform
terraform init



We can make sure that we have Docker installed, we can also use this for the
next module. We can then create a working directory for Terraform and create a
main.tf file. This will define the provider we are using. Using the init
subcommand we can install the driver.

https://registry.terraform.io/browse/providers