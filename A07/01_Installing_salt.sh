#Working on openSUSE

#Install the agent
sudo zypper install salt-minion

#Check the version
sudo salt-call --local --version

#A first the with the ping module
sudo salt-call --local test.ping

#Another way to check the version
sudo salt-call --local test.version

#More infos
sudo salt-call --local test.versions




openSUSE has Salt in the repositories by default so it makes sense to use this.