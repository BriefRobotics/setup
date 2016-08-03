#!/bin/bash

# http://wiki.ros.org/indigo/Installation/Ubuntu

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 0xB01FA116
sudo apt-get update
sudo apt-get install ros-indigo-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/indigo/setup.zsh" >> ~/.zshrc
source ~/.zshrc
source /opt/ros/indigo/setup.zsh
sudo apt-get install python-rosinstall

# catkin workspace

mkdir -p ~/proj/catkin_ws/src
cd ~/proj/catkin_ws/src
catkin_init_workspace
cd ..
catkin_make
