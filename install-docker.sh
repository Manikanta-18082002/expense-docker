#!/bin/bash

#Check whether root user or not
R="\e[31m"
N="\e[0m"

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl start docker
sudo systemctl enable docker
usermod -aG docker ec2-user
echo -e "$R Logout and Login Again $N"

# 1st Clone https://github.com/Manikanta-18082002/expense-docker.git into server
#2nd Run images (Below) to use docker compose
# for i in backend frontend mysql ; do cd $i ; docker build -t $i:v1.0 . ; cd ..; done

