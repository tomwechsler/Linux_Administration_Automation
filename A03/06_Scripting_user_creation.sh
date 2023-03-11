#Working on ubuntu in project1

#Search for a user
grep 'vagrant' /etc/passwd

grep -q 'vagrant' /etc/passwd #-q for query

#Check the exit code
echo $?

#Lets combine (we only run the command on the right if the command left fails)
grep 'vagrant' -q /etc/passwd || useradd -m vagrant #Nothing happend, because we did not get an error which says permission denied

#The right command is executing and we get an error
grep 'vagrant1' -q /etc/passwd || useradd -m vagrant1


grep 'vagrant1' -q /etc/passwd && passwd vagrant1







Scripts can take arguments; $O is always the script name. The number or
arguments can be read using $#. $1 is the first argument. Using [[]] as your test
brackets automatically protects reserved characters in variables.