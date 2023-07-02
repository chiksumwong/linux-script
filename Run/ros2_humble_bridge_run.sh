if [ "${BASH_SOURCE[0]}" -ef "$0" ]
then
    echo "Source this script, not execute it!"
    exit 1
fi

# cd ~/ros2_ws
# . install/setup.bash
ros2 run rosbridge_server rosbridge_websocket
