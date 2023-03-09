#Working on ubuntu

#A few example scripts
ls /Linux_Administration_Automation/shellscripting

Linux_Administration_Automation/shellscripting/info.sh

#Change into our project
cd ~/project1

#The status
git status

##Switch to new branch
git checkout -b shellscripting 

git status

#Create a directory
mkdir shellscripting

cd shellscripting

#Create a simple script
vim info.sh

echo "=================="
hostname
hostname -I
uname -r
echo "=================="

#Save and exit

#Run the script
bash info.sh

#A little debugging
bash -x info.sh

#Change the mode
chmod a+x info.sh

#The file type
file info.sh

#Set the interpreter
sed '1i #!/bin/bash' info.sh

sed -i '1i #!/bin/bash' info.sh

file info.sh

#Run the script (Relative and full path)
./info.sh

/home/vagrant/project1/shellscripting/info.sh

#Track and commit
git add . 

git commit -m "added new info.sh"

#Edit the script (footer one more =)
vim info.sh

#Save and exit

#A short cut for track and commit (does work only for existing files)
git commit -a -m "Added footer"



Making sure that we have fired up our working vagrant ubuntu system. We move
into your git repository, previously created and create a new directory named
shellscripting.

Adding a shebang line to the script tells the system which interpreter to use.
Adding the execute permission allows independent execution, without neediing
to run bash to open the file.