#!/bin/bash

ARIA=libaria_2.9.0+ubuntu12+gcc4.6_amd64.deb

# install mobile sim
curl -O http://robots.mobilerobots.com/ARIA/download/current/$ARIA
sudo dpkg -i $ARIA
# sudo apt-get -f install
rm -f $ARIA
