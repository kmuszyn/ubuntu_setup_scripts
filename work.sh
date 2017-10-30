#!/bin/bash

set -e

# docker

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# slack


sudo apt-get update
sudo apt-get install -y docker-ce network-manager-openvpn-gnome

# docker without sudo
sudo groupadd docker
sudo usermod -aG docker $USER

# for pycharm etc.
mkdir ~/bin


echo ''
echo 'Install pycharm from https://www.jetbrains.com/pycharm/download/download-thanks.html?platform=linux'
git config --global user.email km@greensteam.com
