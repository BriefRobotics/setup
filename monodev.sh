#!/bin/bash

# Depends on Mono: apt-get install mono-complete

# Add Mono Project GPG signing key
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF

# Add package repo
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list

apt-get update
apt-get install monodevelop

# Tools > Add-in Manager > Gallery > Language bindings > F# Language Binding
