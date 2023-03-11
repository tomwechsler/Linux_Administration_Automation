#Working on ubuntu

#Lets use awk
awk -F: '/vagrant/ { print $0 }' /etc/passwd

awk -F: '/vagrant/ { print $1 }' /etc/passwd

awk -F: '/vagrant/ { print "User: " $1 ; print "\tUID: " $3 }' /etc/passwd

awk -F: '/vagrant/ { print "User: " $1 ; print "\tUID: " $3; print "\tGID: " $4 }' /etc/passwd



We have seen the use of both sed and grep. The big brother to these commands
is awk which is its own scripting language.