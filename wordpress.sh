#!/bin/bash
sudo yum -y install docker
sudo yum -y start docker
sudo yum -y enable docker
sudo chmod 666 /var/run/docker.sock
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
cd 
sudo yum -y install git
git clone https://github.com/thudumrakesh/wordpress-docker-compose.git
cd wordpress-docker-compose
docker-compose up -d
