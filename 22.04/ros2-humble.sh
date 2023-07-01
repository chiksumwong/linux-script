#!/usr/bin/env bash

clear
echo "#######################################################################"
echo "#                     ROS2 Humble Setup Sctipt                        #"
echo "#######################################################################"

echo "Install Start"

echo "Enable Ubuntu Universe Repository"
sudo apt install software-properties-common -y
sudo add-apt-repository universe

echo "Add GPG Key and Repository"
sudo apt update && sudo apt install curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

echo "Update and Upgrade Ubuntu Packages"
sudo apt update && sudo apt upgrade

echo "Install ROS2 Hubmle Desktop"
sudo apt install ros-humble-desktop -y

echo "Install ROS2 Development Tools"
sudo apt install ros-dev-tools -y

echo "Install Completed"

echo "Setup Start"

echo "set sroucing to shell startup script"
echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

echo "Check ROS Environment Variables"
printenv | grep -i ROS

echo "Setup Completed"