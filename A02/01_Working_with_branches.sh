#Working on ubuntu

#Nothing at the moment
ls

#Clone the repo
git clone https://github.com/tomwechsler/Linux_Administration_Automation.git

ls

git status #Does not work

#Change into the directory
cd ~/Linux_Administration_Automation

#We are working at the main branch
git status

#The .git and the repo metadata
ls .git

#Start an example, why we use branches
cat /shellscripting/hello.sh

git status

#The branch (this is local)
git branch

#The remote branches
git branch -a

#Switch the branch
git checkout scriptarg

git branch

#Lets look at the script
cat ~/Linux_Administration_Automation/shellscripting/hello.sh

#Switch the branch
git checkout scriptread

git branch

#Lets look at the script
cat ~/Linux_Administration_Automation/shellscripting/hello.sh

#Switch back the main branch
git checkout main

#Lets look at the script
cat ~/Linux_Administration_Automation/shellscripting/hello.sh




We have already used the git download to retrieve the Vagrantfile, allowing us consistency in
the VM builds.
We will work in craeting out own branches, but we have 3 branches in this repo which we can
use to see different versions of the same bash script.