#!/bin/bash

apt-get update

apt-get install curl

apt-get install nodejs # not called 'node' under Ubuntu because of package name conflict
sudo ln -s /usr/bin/nodejs /usr/bin/node # symlink to 'node'

apt-get install npm

apt-get install npm
sudo npm install -g forever

apt-get install tmux

apt-get install unity-tweak-tool
apt-get install gnome-tweak-tool

apt-get install git
git config --global push.default simple

apt-get install atom
apm install vim-mode

apt-get install mono-complete
apt-get install fsharp

apt-get install exuberant-ctags
cp -f ./.ctags ~/.ctags

# clojure
apt-get install default-jre
cp lein /usr/local/bin
chmod +x /usr/local/bin/lein
