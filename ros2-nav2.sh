#!/usr/bin/env bash

clear
echo "#######################################################################"
echo "#                     ROS2 Nav2 Setup Sctipt                          #"
echo "# Ubuntu Version: 22.04                                               #"
echo "#######################################################################"

echo "[INFO] Install Start"

echo "[INFO] Install ROS2 Nav2"
sudo apt install ros-humble-desktop -y
sudo apt install ros-humble-nav2-bringup -y

echo "[INFO] Install ROS2 Turtlebot 3 (IF ANY)"
sudo apt install ros-humble-turtlebot3-gazebo -y

echo "[INFO] Install Completed"

# Running the Exmple
# source /opt/ros/humble/setup.bash
# export TURTLEBOT3_MODEL=waffle
# export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/opt/ros/humble/share/turtlebot3_gazebo/models
# ros2 launch nav2_bringup tb3_simulation_launch.py headless:=False
