#Working on the host

vim .vimrc

autocmd FileType yaml setlocal ai et ts=2 sw=2 cuc cul

#Save and exit

#Create a yaml file
vim my.yaml

--- # doc Header
name: fred
items: # List
    - item1
    - item2
    - item3
package: # dictionary (list of key value pairs)
    name: tree
    state: installed
... # doc footer

#To check the synatx
sudo apt update

sudo apt install -y yamllint

#No message is a good one
yamllint my.yaml




False: Yelling At My Laptop
False: Yet Another Markup Language
True: YAML Aint Markup Language
It is a data structure language like JSON