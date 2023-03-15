#Working on openSUSE

#Install the agent
sudo zypper install salt-minion

#Check the version
sudo salt-call --local --version 

#A first the with the ping module
sudo salt-call --local test.ping 2>/dev/null

#Another way to check the version
sudo salt-call --local test.version 2>/dev/null

#More infos
sudo salt-call --local test.versions 2>/dev/null




openSUSE has Salt in the repositories by default so it makes sense to use this.