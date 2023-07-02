#!/usr/bin/env bash

clear
echo "#######################################################################"
echo "#                     SSH Setup Sctipt                                #"
echo "# Linux Version: Ubuntu 22.04                                         #"
echo "#######################################################################"

echo "[INFO] Install Start"

sudo apt update && sudo apt upgrade

echo "[INFO] Remoe old SSH Server (IF ANY)"
sudo apt remove --purge openssh-server

echo "[INFO] Install SSH Server"
sudo apt install openssh-server -y

echo "[INFO] Install Completed, Please Reboot"
