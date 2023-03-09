#Working on ubuntu in project1/shellscripting

#The os release
cat /etc/os-release

#With source we get the content of the variables
source /etc/os-release

#Print the variables
echo $PRETTY_NAME

#Lets edit the script
vim info.sh

#Copy the content from the info_with_source.sh

#Save and exit

#Run the script
./info.sh

#Update git
git status

git commit -am "added os release"

git checkout master

#Back to project1
cd ..

#Update git
git status

git merge shellscripting

#Check the content
cat shellscripting/info.sh

git branch

#Back to the shellscripting branch
git checkout shellscripting




The /etc/os-release file has data within variables that we can use in our own
scripts. To read the variables into the current shell or script we use the source
command. Adding these sourced variables to our script can add additional
functionality.