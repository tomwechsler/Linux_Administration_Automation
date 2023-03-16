#Working on ubuntu

#Check the group membership
id

#Use docker
docker image

docker images

#Image is a subcommand
docker image ls

docker image TABTAB

#Images uses tags
docker image inspect hello-world

docker image inspect hello-world -f '{{ .RepoTags }}'

#Give a new tag
docker image tag hello-world my-hello

#The same image has two tags
docker image ls

#With fin
sudo find /var/lib/docker -name "<image id>#*"

#Search for an image in docker hub
docker search ubuntu

docker search ubuntu -f is-official=true

docker search centos -f is-official=true

#Download an image
docker image pull centos

docker image pull centos:7

docker image ls



Images come from the Docker Image registry at hub.docker.com. The image is cloned to running
containers as needed. Images are files in the file system based on the image id, but they are
located by the image tag and additional tags can be assigned to the same image.