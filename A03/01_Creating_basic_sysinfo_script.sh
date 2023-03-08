#Working on ubuntu

cd ~/project1

git checkout -b shellscripting 

mkdir shellscripting

vim info.sh
echo "=================="
hostname
hostname -I
uname -r
echo "=================="

#Save and exit

bash info.sh

git add . 

git commit -m "First sample of info script"



Making sure that we have fired up our working vagrant ubuntu system.We move
into your git repository, previously created and create a new directory named
shellscripting.