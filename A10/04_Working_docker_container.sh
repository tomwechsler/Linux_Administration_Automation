#Working on ubuntu

#Use docker
docker container ls

docker container ls -a

#Cleanup
docker container prune

docker container ls -a

#Any container running
docker ps

docker ps -a

#Run a container
docker run ubuntu

docker ps

docker ps -a

#Run a interactive container
docker run -it --name u1 ubuntu

exit

docker ps

docker ps -a

#Start a new container
docker run -it --name u2 ubuntu
ls
CNTRL pq

docker ps -a

docker ps

#Attach to the container
docker container attach u2

exit

#Cleanup
docker container prune



Containers are cloned from images with the docker run command. Assign a name to the
container to avoid auto-generated name. The Ubuntu image runs bash by default and exit will
stop the container. To keep the container running use CNTRL+pq.