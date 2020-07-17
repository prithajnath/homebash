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
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt install -y yarn python g++


# NVM/Node.js install
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm install 10.16
