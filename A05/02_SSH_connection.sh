#Working on alma

#Create a key pair
ssh-keygen

#Copy the keys (PasswordAuthentication must be allowed)
ssh-copy-id vagrant@192.168.56.102

ssh-copy-id vagrant@192.168.56.103

#Read the process
eval $(ssh-agent)

#Cache the passphrase
ssh-add

#Test
ssh vagrant@192.168.56.102

ssh vagrant@192.168.56.103