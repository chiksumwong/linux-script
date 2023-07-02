#!/usr/bin/env bash

clear
echo "#######################################################################"
echo "#                     ROS2 Nav2 Setup Sctipt                          #"
echo "# Linux Version: Ubuntu 22.04                                               #"
echo "#######################################################################"

echo "[INFO] Install Start"

echo "[INFO] Install ROS2 Nav2"
sudo apt install ros-humble-desktop -y
sudo apt install ros-humble-nav2-bringup -y

echo "[INFO] Install ROS2 Turtlebot 3 (IF ANY)"
sudo apt install ros-humble-turtlebot3-gazebo -y

echo "[INFO] Install Completed"
