#Working on ubuntu in project1

#An example script
~/Linux_Administration_Automation/shellscripting/pwgen.sh #Type a short pw

~/Linux_Administration_Automation/shellscripting/pwgen.sh #Type a longer pw

#Change into shellscripting
cd shellscripting

ls

vim pwgen.sh

#!/bin/bash
PWD_OK="false" 
until [  "$PWD_OK" = "true" ] ; do
#while [ "$PWD_OK" != "true" ] ; do 
  read -sp "Enter password: " 
  echo ""
  PWD_LEN=$(echo -n "$REPLY" | wc -m)
  PASSWORD=$(openssl passwd -6 "$REPLY")
  if [ "$PWD_LEN" -gt 6 ]; then
    PWD_OK="true" 
    echo "$PASSWORD"
  fi 
done

#Save and exit

#Made it executable
chmod a+x pwgen.sh

#Test the script (with short and a long password)
./pwgen.sh

#Add to git
git add .

git commit -m "pwgen"



We can use either WHILE or UNTIL loops to check conditions and keep looping
until they are either true or false. We can also use conditionals within the loop to
trigger it to end. In this example we use while, read and if statements and we will 
discover more about these statements in the demo.