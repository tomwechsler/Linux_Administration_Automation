#Working on ubuntu in project1

#Git status
git status

#The script is working but not perfect
./pwgen.sh

#Edit the script
vim pwgen.sh

#Before fi and after $PASSWORD
else
    echo "Password too short must be more than 6 characters"
    exit 2

#Save and exit

#Test the script (with a short password)
./pwgen.sh

#The exit code
echo $?

#Edit the script again
vim pwgen.sh

#Copy the content from the example file

#Save and exit

#Test the script
./pwgen.sh Password1

./pwgen.sh pass

./pwgen.sh



Scripts can take arguments; $O is always the script name. The number or
arguments can be read using $#. $1 is the first argument. Using [[]] as your test
brackets automatically protects reserved characters in variables.