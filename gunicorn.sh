#!/usr/bin/env bash

clear
echo "#######################################################################"
echo "#                     Docker Setup Sctipt                             #"
echo "# Ubuntu Version: 22.04                                               #"
echo "#######################################################################"

echo "[INFO] Install Start"

mkdir -p ~/web
python3 -m venv ~/web/venv
source ~/web/venv/bin/activate
pip install gunicorn
sudo touch /etc/systemd/system/gunicorn.service

echo "[INFO] Install Completed"
