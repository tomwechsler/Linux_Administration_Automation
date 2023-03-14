#Working on alma in our ansible working directory

cd ~/ansible 

vim playbook.yml
---
- name: my first play
  hosts: all
  become: true 
  tasks:
  - name: my first task
    package:
      name: tree
      state: present
...

#Save and exit

#Check syntax
ansible-playbook playbook.yml --syntax-check

#This is a check (-C check the operation - does nothing)
ansible-playbook playbook.yml -C

#Let's use the playbook
ansible-playbook playbook.yml



Whilst ad-hoc commands are good for quick configuration, they are not so good
for repeatable configurations. Using playbooks, we can record the desired state
of a system or systems and ensure this in a repeatable manner.