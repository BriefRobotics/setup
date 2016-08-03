#!/bin/bash

LIBARIA=libaria_2.9.0+ubuntu12+gcc4.6_amd64.deb
CATKIN=~/proj/catkin

# install aria-base
curl -O -u microsoft http://robots.mobilerobots.com/ARIA/download/current/$ARIABASE
sudo dpkg -i $ARIABASE
rm -f $ARIABASE

# ros-arnl
cd $CATKIN
git clone https://github.com/MobileRobots/ros-arnl src/ros-arnl
catkin_make
