#!/bin/bash

# Install Visual Studio Code
# http://code.visualstudio.com

readonly VSCODE_DIR=/opt/vscode

# apt-get update
# sudo apt-get -y install curl
# sudo apt-get -y install unzip

sudo mkdir $VSCODE_DIR
sudo curl -o $VSCODE_DIR/vscode.zip -L http://go.microsoft.com/fwlink/?LinkID=534108
sudo unzip $VSCODE_DIR/vscode.zip -d $VSCODE_DIR
sudo rm -f $VSCODE_DIR/vscode.zip
sudo ln -s $VSCODE_DIR/Code /usr/local/bin/code

