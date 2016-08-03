#!/bin/bash

ARNLBASE=arnl-base_1.9.2prerelease20160802+ubuntu12_amd64.deb
LIBARNL=libarnl_1.9.2prerelease20160802+ubuntu12_amd64.deb
CATKIN=~/proj/catkin_ws

# install arnl-base
curl -O -u microsoft http://robots.mobilerobots.com/BaseArnl/download/prerelease/$ARNLBASE
sudo dpkg -i $ARNLBASE
rm -f $ARNLBASE

# install libarnl
curl -O -u microsoft http://robots.mobilerobots.com/ARNL/download/prerelease/$LIBARNL
sudo dpkg -i $LIBARNL
rm -f $LIBARNL

# ros-arnl
cd $CATKIN
git clone https://github.com/MobileRobots/ros-arnl src/ros-arnl
rosdep install --from-paths src --ignore-src --rosdistro=indigo -y
catkin_make --force-cmake

# serial port permissions
sudo adduser ashleyf dialout
sudo chmod a+rw /dev/ttyUSB0
sudo chmod a+rw /dev/ttyUSB1
