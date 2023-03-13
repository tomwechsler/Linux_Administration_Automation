#Working on ubuntu

#Create a key pair
ssh-keygen

#Copy the keys
ssh-copy-id vagrant@192.168.56.101

ssh-copy-id vagrant@192.168.56.103

#Read the process
eval $(ssh agent)

#Cache the passphrase
ssh-add

#Test
ssh vagrant@192.168.56.101

ssh vagrant@192.168.56.103