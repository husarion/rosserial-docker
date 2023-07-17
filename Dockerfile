ARG ROS_DISTRO=noetic

FROM ros:$ROS_DISTRO-ros-core

# Set the working directory in the container to /app
WORKDIR /ros_ws

# Update and install necessary packages
RUN apt-get update && apt-get install -y \
    ros-$ROS_DISTRO-serial \
    ros-$ROS_DISTRO-rosserial-python \
    ros-$ROS_DISTRO-rosserial-server \
    && rm -rf /var/lib/apt/lists/*

# Copy the launch file
COPY serial_node.launch .

CMD ["bash"]
