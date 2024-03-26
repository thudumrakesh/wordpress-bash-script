#!/bin/bash
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo chmod 666 /var/run/docker.sock
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose version
sudo yum -y install git
git clone https://github.com/thudumrakesh/wordpress-docker-compose.git
cd wordpress-docker-compose
docker-compose up -d
