#Working on ubuntu

#Change into the directory (if you are not in)
cd ~/Linux_Administration_Automation

#List the config
git config --list

#If there is no global config, we get an error
git config --global --list

#We need at the minimum the email and username
git config --global user.email "tux@example.com"

git config --global user.name "Tux Penguin"

#Now we do not get an error
git config --global --list

cat ~/.gitconfig

#The infos also shows up in this repo
git config --list




There is a database (.git/) that stores version control information for the git repository. There is
also global configuration in the users home directory and .gitconfig file. To commit changes,
even locally we need the user information to be available.

