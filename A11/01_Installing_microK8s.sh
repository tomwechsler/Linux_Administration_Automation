#Working on ubuntu

#Memory
free -h

#Install microk8s
sudo snap install microk8s --classic

#Add the user to the group
sudo gpasswd -a $USER microk8sa 

exit

vagrant ssh ubuntu

#Check
id

#The status
microk8s status

#List the cluster ip
microk8s kubectl get all

#What did the snap install in the background
lsblk



MicroK8s is a CNCF (Cloud Native Computing Foundation) upstream Kubernetes deployment that
allows for a simple setup on a single host. Ideally a Kubernetes cluster would consist of many
systems.