#Working on ubuntu in the project1 directory

cd ~/project1

#Create a new directories
mkdir -p ~/git/project1.git 

#Change in to
cd ~/git/project1.git

#Initialize the git repo
git init --bare

ls

#Change to the project directory
cd ~/project1

#List the config
git config --list

#Add to the repo
git remote add origin ~/git/project1.git

#Check the infos
git remote -v

#Once we specify the upstream
git push --set-upstream origin master

#Now we see the branch info
git config --list

#Lets clone the repo
cd #back to the home directory

mkdir play

cd play

git clone ~/git/project1.git

ls

cd project1

#Create a new file
touch file1

git status

#Track and commit
git add .

git commit -m "test"

git push

#Get back
cd ~/project1

ls

git pull

ls



Ideally, we work on a local copy of a repository that is hosted online. We use git push to push
changes we have manage to the remote server repo. This allows others to share our code and
collaborate. We can demonstrate using another directory structure as the remote repository.