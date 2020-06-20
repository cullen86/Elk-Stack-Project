# Elk Stack

Elk Stack Class Project

### Git Commands

## Add new files/directories to our git tracking

git add .

## Commits files that we added to our set of changes

git commit -a -m "message about the changes (present tense)"

## Push our set of changes changes to the cloud.

git push

## Pulls changes from the cloud

git pull

## Let git know who you are

git config --global user.name "John Doe"
git config --global user.email johndoe@example.com


### Root Home Command ####
    cd ~

###### DOCKER COMMANDS #######
# Docker Status
    systemctl status docker

# Start docker and Enter Container
    sudo docker run -ti cyberxsecurity/ansible bash


### Install YML Playbook ###
ansible-playbook install-elk.yml