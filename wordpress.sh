#!/bin/bash
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo chmod 666 /var/run/docker.sock
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo yum -y install git
git clone https://github.com/thudumrakesh/wordpress-dockercompose.git
cd wordpress-dockercompose
/usr/local/bin/docker-compose up -d

