#!/usr/bin/env bash

# Download Go binary
wget https://golang.org/dl/go1.14.6.linux-amd64.tar.gz
tar xvf go*.tar.gz

# Configure Go path and root
mv go $HOME/goroot
mkdir $HOME/gopath
echo export GOROOT=$HOME/goroot >> ~/.bashrc
echo export GOPATH=$HOME/gopath >> ~/.bashrc

# Cleanup
rm go*.tar.gz

# Essentials
sudo apt install -y yarn python g++


# NVM/Node.js install
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

source ~/.bashrc

nvm install 10.16
