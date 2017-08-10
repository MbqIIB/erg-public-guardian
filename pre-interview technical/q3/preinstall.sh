#!/bin/bash

sudo apt-get -y install lvm2
sudo pvcreate /dev/xvda
sudo vgcreate sysvg /dev/xvda
sudo lvcreate -L -n lvswap sysvg
sudo mount /dev/xvda /opt