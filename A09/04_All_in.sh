#Working on ubuntu

#Leave the session
exit

vagrant destroy ubuntu --force

vagrant up ubuntu

vagrant ssh ubuntu

#Noting on it
ls

sudo apt update

sudo apt install -y ansible

#Create a playbook
vim play.yaml

---
- name: Setup Terraform on New Ubuntu System
  hosts: localhost
  gather_facts: true
  tasks:
    - name: Update the APT Package Cache
      become: true
      apt:
        update_cache: true
        cache_valid_time: 3600
    - name: Before we add the Hashicorp Repo - we add the signing key
      become: true
      apt_key:
        url: "https://apt.releases.hashicorp.com/gpg"
        state: present
    - name: We now add the Hashicorp Repo to Ubuntu
      become: true
      apt_repository:
        repo: "deb [arch=amd64] https://apt.releases.hashicorp.com focal main"
        state: present
    - name: Install software from standard repos and hashicorp
      become: true
      package:
        name:
          - docker.io
          - gnupg
          - software-properties-common
          - curl
          - terraform
    - name: We add the local USER to the Docker group
      become: true
      user:
        name: "{{ lookup('env', 'USER') }}"
        groups: docker
        append: true
    - name: We clone the course git repository
      git:
        repo: "https://github.com/tomwechsler/Linux_Administration_Automation.git"
        dest: "{{ lookup('env', 'HOME') }}/Linux_Administration_Automation"
        version: main
    - name: We create the directory for terraform project
      file:
        path: "{{ lookup('env', 'HOME') }}/terraform/"
        state: directory
    - name: We create the web directory to store content
      file:
        path: "{{ lookup('env', 'HOME') }}/terraform/web"
        state: directory
    - name: We copy the main.tf terraform file from the course repo
      copy:
        src: "{{ lookup('env', 'HOME') }}/Linux_Administration_Automation/terraform/main.tf"
        dest: "{{ lookup('env', 'HOME') }}/terraform/main.tf"
    - name: Create the index page for the website
      copy:
        dest: "{{ lookup('env', 'HOME') }}/terraform/web/index.html"
        content: This is my web page
...

#Save and exit

#Lets run
ansible-playbook play.yaml

#Exit the session to apply group membership
exit

vagrant ssh ubuntu

#Check
id

ls

cd terraform

terraform init

terraform plan

terraform apply -auto-approve

#And test
curl localhost:8000

