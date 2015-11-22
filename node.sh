#!/bin/bash

# Install Node.js
# http://nodejs.org

# apt-get update

sudo apt-get -y install nodejs # not called 'node' under Ubuntu because of package name conflict
sudo ln -s /usr/bin/nodejs /usr/bin/node # symlink to 'node'

sudo apt-get -y install npm

# sudo npm install -g forever
