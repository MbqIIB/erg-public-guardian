#!/bin/sh

sudo apt-get update;
sudo apt-get install wget;

curl -L https://github.com/docker/compose/releases/download/1.15.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose;
chmod +x /usr/local/bin/docker-compose;
sudo apt-get -y install unzip;
cd /vagrant;
docker-compose up;
docker-compose ps;