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

resource "docker_image" "nginx" {
  name = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.repo_digest
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