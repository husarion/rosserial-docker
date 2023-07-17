ARG ROS_DISTRO=noetic

FROM ros:$ROS_DISTRO-ros-core

# Update and install necessary packages
RUN apt-get update && apt-get install -y \
    ros-$ROS_DISTRO-teleop-twist-keyboard \
    && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
