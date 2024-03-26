#!/bin/bash
sudo yum -y install docker
sudo yum -y start docker
sudo yum -y enable docker
sudo usermod -ag doc ec2-user
sudo chmod 666 /var/run/docker.sock
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo yum -y install git
git clone https://github.com/thudumrakesh/wordpress.git
cd wordpress
docker-compose up -d
