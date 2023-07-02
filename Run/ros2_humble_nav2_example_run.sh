if [ "${BASH_SOURCE[0]}" -ef "$0" ]
then
    echo "Source this script, not execute it!"
    exit 1
fi

# Running the Exmple
source /opt/ros/humble/setup.bash
export TURTLEBOT3_MODEL=waffle
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/opt/ros/humble/share/turtlebot3_gazebo/models
ros2 launch nav2_bringup tb3_simulation_launch.py headless:=False
