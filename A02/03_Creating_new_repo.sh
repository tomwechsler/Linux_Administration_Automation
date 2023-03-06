#Working on ubuntu

cd

#Create new directory
mkdir project1 

cd project1

ls -la

#Git init
git init 

git status

ls -la

git config --list

#Create a file
echo "My first line" > myfile

cat myfile

#What about the git status
git status

#We track the all file (this means the .)
git add .

git status

#We commit the files with a comment
git commit -m "First commit"

#Use the git log
git log

git log --oneline




Even if you are not going to collaborate ou your projects a local git repo will low you to
revert changes or maintain different versions of the same file.