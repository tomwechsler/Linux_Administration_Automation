#!/bin/bash
read -p "Enter a username to create: " NEWUSER
grep -q $NEWUSER /etc/passwd && exit 2
PASSWORD=$(./pwgen.sh)
sudo useradd -m $NEWUSER -p $PASSWORD
echo ""
getent passwd $NEWUSER