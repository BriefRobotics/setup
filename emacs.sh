#!/bin/sh

apt-get install emacs

cp -f ./.emacs ~/.emacs

# monokai
mkdir ~/.emacs.d/themes/
cp monokai-theme.el ~/.emacs.d/themes/
