#!/bin/bash

apt update -y
apt install sudo -y
apt install curl -y
sudo curl -sS https://get.docker.com/ | sh
sudo systemctl enable docker
curl -L https://github.com/docker/compose/releases/download/v1.25.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

echo -e 'Docker CE and docker-compose are both installed and ready now.';
echo -e 'To test your setup use: `$ docker run hello-world` and check your container with `$ docker ps`';