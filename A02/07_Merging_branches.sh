#Working on ubuntu in the project1 directory

cd ~/project1

#Git status
git status

#Create a new branch
git checkout -b dev

#Change the script
vim python/my.py
#!/usr/bin/env python3
import datetime
date = datetime.datetime.now()
print (date)

#Save and exit

#Status, track, commit and push

git status

git add .

git commit -m "tidy code"

git push origin dev

#Change the branch
git checkout master

cd

rm -rf play/project1

cd play

git clone -b dev ~/git/project1.git

#Change in the new cloned directory
cd project1

#Git status
git status

#Run the script
./python/my.py

cat ./python/my.py

#Change the branch
git checkout master

#Merge the dev branch
git merge dev

git status

git push



When developing new code, we can implement branches to isolate development code from
production code. When development is complete and signed-off we can merge the code
with our master or main branch.

Ideally, another developer will check the code and sign it off. They can clone the required
branch, test the code; if that is ok, they will then checkout the master branch and merge the
dev branch to it.