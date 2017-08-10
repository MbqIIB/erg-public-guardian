#!/bin/sh

sudo apt-get update
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install python-pip
sudo pip install boto3
sudo apt-get -y install ansible
sudo ntpdate pool.ntp.org
sudo timedatectl set-timezone Europe/London