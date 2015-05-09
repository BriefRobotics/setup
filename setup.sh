#!/bin/bash

apt-get -y update

apt-get -y install curl

apt-get -y install tmux

apt-get -y install unity-tweak-tool
apt-get -y install gnome-tweak-tool

apt-get -y install git
git config --global push.default simple

# apt-get -y install atom
# apm install vim-mode

apt-get -y install mono-complete
apt-get -y install fsharp

apt-get -y install exuberant-ctags
cp -f ./.ctags ~/.ctags

# clojure
apt-get -y install default-jre
cp lein /usr/local/bin
chmod +x /usr/local/bin/lein

apt-get -y install gcc

apt-get -y install zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh # DANGER!

apt-get -y install htop
