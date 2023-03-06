#Working on ubuntu in the project1 directory

ls

cat myfile

git status

#Lets a new line (we override - accidental)
echo "Hello world!" > myfile

#Track and commit
git add .

git commit -m "Added text"

git branch #There is just one branch - we should work with different branches

#Display the infos
git status

git show

git log

git log --oneline

#Revert one line
git revert --no-commit -m1 e778753..HEAD

#See the content of the file
cat myfile

#Add some text the right way
echo "Hello world!" >> myfile

#See the content of the file
cat myfile

#Track and commit
git add .

git commit -m "Added text correctly"

#Show the infos
git show




As a version control system, git allows us to revert changes to previously committed (saved)
versions. Ideally, we would create a development branch for any new code. But even if we
havent, we can still revert. Choose the correct commit identifier to rollback to your previous
changes.

