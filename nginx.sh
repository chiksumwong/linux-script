#!/usr/bin/env bash

clear
echo "#######################################################################"
echo "#                     Nginx Setup Sctipt                              #"
echo "# Ubuntu Version: 22.04                                               #"
echo "#######################################################################"

echo "[INFO] Install Start"

echo "[INFO] Install Nginx"
sudo apt update && sudo apt upgrade
sudo apt update && sudo apt install nginx -y

echo "[INFO] Install Completed"
