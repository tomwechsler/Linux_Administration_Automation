#Working on ubuntu in project1

#Search for a user
grep 'vagrant' /etc/passwd

grep -q 'vagrant' /etc/passwd #-q for query

#Check the exit code
echo $?

#Lets combine (we only run the command on the right if the command left fails)
grep 'vagrant' -q /etc/passwd || useradd -m vagrant #Nothing happend, because we did not get an error which says permission denied

#The right command is executing and we get an error
grep 'vagrant1' -q /etc/passwd || useradd -m vagrant1

#This is an other example (The command on the right is executed only if the left command was successful)
grep 'vagrant1' -q /etc/passwd && passwd vagrant1

#Lets create a script
vim create_user.sh

#Copy the content from the example files

#!/bin/bash
read -p "Enter a username to create: " NEWUSER
grep $NEWUSER /etc/passwd && exit 2
PASSWORD=$(./pwgen.sh)
sudo useradd -m $NEWUSER -p $PASSWORD
echo ""
getent passwd $NEWUSER

#Save and exit

#Test the script
chmod a+x create_user.sh

./create_user.sh

#Did it work
su - fred12
exit

#Track and commit
git add .

git commit -m "create user"

#Checkout
git checkout master

#Back to the project1
cd

git merge shellscripting

git push




Scripts can take arguments; $O is always the script name. The number or
arguments can be read using $#. $1 is the first argument. Using [[]] as your test
brackets automatically protects reserved characters in variables.