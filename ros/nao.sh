#!/bin/bash

# http://wiki.ros.org/nao

sudo apt-get install ros-.*-nao.robot
sudo apt-get install ros-.*-nao.extras

sudo apt-get install ros-indigo-nao-meshes

sudo apt-get install ros-indigo-driver-base ros-indigo-move-base-msgs ros-indigo-octomap ros-indigo-octomap-msgs ros-indigo-humanoid-msgs ros-indigo-humanoid-nav-msgs ros-indigo-camera-info-manager ros-indigo-camera-info-manager-py

# http://wiki.ros.org/nao/Tutorials/Installation

echo "Download the following from https://community.ald.softbankrobotics.com/en/resources/software/language/en-gb"
echo "* naoqi-sdk*linux64.tar.gz"
echo "* pynaoqi-python*linux64.tar.gz"

mkdir ~/naoqi
cp ~/Downloads/naoqi-sdk-*-linux64.tar.gz ~/Downloads/pynaoqi-python*linux64.tar.gz ~/naoqi
cd ~/naoqi

tar xzf naoqi-sdk*linux64.tar.gz
tar xzf pynaoqi-python*linux64.tar.gz

echo 'export PYTHONPATH=~/naoqi/pynaoqi-python2.7-2.1.4.13-linux64:$PYTHONPATH' >> ~/.zshrc
