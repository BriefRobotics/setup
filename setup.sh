#!/bin/bash

apt-get update

apt-get install curl

apt-get install nodejs # not called 'node' under Ubuntu because of package name conflict
sudo ln -s /usr/bin/nodejs /usr/bin/node # symlink to 'node'

apt-get install npm

apt-get install npm
sudo npm install -g forever

apt-get install tmux

apt-get install git
git config --global user.name "AshleyF"
git config --global user.email "ashley.feniello@live.com"
