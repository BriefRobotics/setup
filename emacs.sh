#!/bin/bash

mkdir ~/.emacs.d/
mkdir ~/.emacs.d/themes/
cp init.el ~/.emacs.d/.
cp monokai-theme.el ~/.emacs.d/themes/.
apt-get install emacs
