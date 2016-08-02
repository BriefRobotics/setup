#!/bin/bash

SIM=mobilesim_0.7.5+ubuntu12+gcc4.6_i386.deb

# install mobile sim
curl -O http://robots.mobilerobots.com/MobileSim/download/current/$SIM
sudo dpkg -i $SIM
sudo apt-get -f install --assume-yes
rm -f $SIM
