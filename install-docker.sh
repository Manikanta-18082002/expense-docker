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

# docker compose up -d
# docker compose down
#  docker exec -it backend bash
# curl -o /dev/null -s -w 'Total: %{time_total}s\n'tal: %{time_total}s\n' http://localhost:8080/transaction

#alpine os dosen't work for statefull apllications (Database)
# Works only for stateless  applications (Frontend, backend)

# To delete all images
# docker system prune -a --> to delete all cache
# docker builder prune
# docker image prune

# To see the layers while build an image
# set DOCKER_BUILDKIT=0
# export DOCKER_BUILDKIT=0

# Docker follow intermediate containers and layering approach for better storage
#Docker create container from 1st intruction and runs the second instrucion and runs the image out of it and then delete the intermediate container