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
echp $?

#Edit the script again
vim pwgen.sh

#Copy the content from the example file

#Save and exit

#Test the script
./pwgen.sh Password1

./pwgen.sh pass

./pwgen.sh




The variable $? will contain the success or failure  of the previously executed
command. We only want to create the user if the search for the user account
fails, ||. We only want to create the users password if the search succeeds, &&.