#Working on ubuntu in project1/shellscripting

#In order to customize our script, we need to know how to find the info

hostname

#List the IPs
hostname -I

hostname -I | cut -f1 -d' '

uname -r

echo "Kernel: $(uname -r)"

#How many characters are generated
echo "Kernel: $(uname -r)" | wc -m

#With this knowledge we can adjust the script
vim info.sh

!/bin/bash
INFO_HOSTNAME=$(hostname) 
INFO_IP=$(hostname -I | cut -f1 -d' ')
INFO_KERNEL=$(uname -r)
for i in {1..25} ; do
  echo -n =
done
echo
echo "Host: $INFO_HOSTNAME"
echo "IP: $INFO_IP"
echo "Kernel: $INFO_KERNEL"
for i in {1..25} ; do
  echo -n =
done
echo

#Copy the content from the example

#Save and exit

#Test the script
./info.sh

#A short cut for track and commit (does work only for existing files)
git commit -a -m "Added variables"
