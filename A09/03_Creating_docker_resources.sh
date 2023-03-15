#Working on ubuntu in the terraform directory

ls

#A new directory
mkdir web

#A sample index.html
echo > web/index.html

#Edit the main.tf file
vim main.tf #:set ai et ts=2 sw=2

resource "docker_image" "nginx" {
  name = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name = "webserver"
  ports {
    internal = 80
    external = 8000
  }
  volumes {
    container_path = "/usr/share/nginx/html"
    host_path = "/home/vagrant/terraform/web/"
  }
}

#Save and exit

#Now we use terraform
terraform plan

terraform apply -auto-approve

#Did it work
curl localhost:8000

#With docker
docker ps

docker images

#Remove the resources
terraform destroy

#With docker
docker images

docker ps -a


When working with Docker we need to define the master image that we want to
use with containers.