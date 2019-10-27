#!/bin/bash

echo "Update and install essentials..."
apt-get update -y
apt-get install -y git wget

echo "Installing Chrome..."
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - 
sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
apt-get update -y
apt-get install -y google-chrome-stable

echo "Installing pip..."
apt-get install -y python3-pip

echo "Installing virtualenv, virtualenvwrapper..."
pip3 install virtualenv virtualenvwrapper

echo "Installing zathura, vim, tmux..."
apt-get install -y zathura vim tmux

echo "Copying dotfiles and test scripts..."
mkdir ~/scripts
cd ~/scripts
git clone https://github.com/ChillwindYeti/ubuntu-bootstrap
git clone https://github.com/ChillwindYeti/gnome-terminal-colors
cp ubuntu-bootstrap/.* ~
