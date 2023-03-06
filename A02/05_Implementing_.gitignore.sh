#Working on ubuntu in the project1 directory

cd ~/project1

#Check the git status
git status

#Copy the python directory
cp -R ~/Linux_Administration_Automation/python .

ls -la python

#If needed
chmod a+x python/my.py

#Track the new files
git add .

git status

git commit -m "add python script"

git status

#Lets create the .gitignore gile
vim .gitignore

#__pycache__/
#*.swp

#Save and exit

#Check the status
git status

#We start the script and compile
./python/my.py

ls python/

python3 -m compileall python/

ls python/

ls python/__pycache__/

#Check the status
git status

#Track the new files
git add .

git status

git commit -m "added gitignore"




Using git add . is a convenient way to add all modified and new files to the staging area to await
committing. Some files should never be added to the git repo such as cache files that are
created during execution.