#Working on ubuntu

#Check the deployments
microk8s kubectl get deployment

#Create new deploment
microk8s kubectl create deployment web --image=nginx

#Check the deployments
microk8s kubectl get deployment

#Maybe run again
microk8s kubectl get deployment

#List the pods
microk8s kubectl get pods

#The services
microk8s kubectl get service

#Create replicas
microk8s kubectl scale deployment web --replicas=2

microk8s kubectl get deployment

microk8s kubectl get pods

#Expose the service
microk8s kubectl expose deployment web --type=NodePort --port=80 --name=nginx-web

#Check the service
microk8s kubectl get service

curl 10.152.183.50

#Cleanup
microk8s kubectl delete service nginx-web

microk8s kubectl delete deployment web

#Ceck
microk8s kubectl get all



For availability we can create a deployment of Nginx with two replicas, in our case the replicas
will run on the single node but is adequate for the demonstration.