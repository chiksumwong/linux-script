#!/usr/bin/env bash

clear
echo "#######################################################################"
echo "#                     Docker Setup Sctipt                             #"
echo "# Linux Version: Ubuntu 22.04                                         #"
echo "#######################################################################"

echo "[INFO] Install Start"

sudo apt update && sudo apt upgrade

echo "[INFO] Install Required Ubuntu Packages"
sudo apt install ca-certificates curl gnupg lsb-release -y

echo "[INFO] Add GPG Key and Repository"
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "[INFO] Install Docker"
sudo apt update && sudo apt upgrade
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin -y

echo "[INFO] Install Docker Compose"
sudo apt install docker-compose-plugin -y

echo "[INFO] Install Completed"

echo "[INFO] Setup Start"

echo "[INFO Set Docker Permission]"
sudo usermod -aG docker $USER
newgrp docker

echo "[INFO Check Docker Permission]"
getent group docker

echo "[INFO Check Docker Setup]"
docker version

echo "[INFO] Setup Completed"
