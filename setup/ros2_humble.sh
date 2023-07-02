#!/usr/bin/env bash

clear
echo "#######################################################################"
echo "#                     ROS2 Humble Setup Sctipt                        #"
echo "# Linux Version: Ubuntu 22.04                                         #"
echo "#######################################################################"

echo "[INFO] Install Start"

echo "[INFO] Enable Ubuntu Universe Repository"
sudo apt install software-properties-common -y
sudo add-apt-repository universe

echo "[INFO] Add GPG Key and Repository"
sudo apt update && sudo apt install curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

echo "[INFO] Update and Upgrade Ubuntu Packages"
sudo apt update && sudo apt upgrade

echo "[INFO] Install ROS2 Hubmle Desktop"
sudo apt install ros-humble-desktop -y

echo "[INFO] Install ROS2 Development Tools"
sudo apt install ros-dev-tools -y

echo "[INFO] Install Completed"

echo "[INFO] Setup Start"

echo "[INFO] Set sroucing to shell startup script"
echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

echo "[INFO] Check ROS Environment Variables"
printenv | grep -i ROS

echo "[INFO] Setup Completed"