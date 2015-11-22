#!/bin/bash

# Install Visual Studio Code
# http://code.visualstudio.com

readonly VSCODE_DIR=/opt/vscode

# apt-get update
# apt-get -y install curl
# apt-get -y install unzip

mkdir $VSCODE_DIR
curl -o $VSCODE_DIR/vscode.zip -L http://go.microsoft.com/fwlink/?LinkID=534108
unzip $VSCODE_DIR/vscode.zip -d $VSCODE_DIR
rm -f $VSCODE_DIR/vscode.zip
ln -s $VSCODE_DIR/Code /usr/local/bin/code

code
