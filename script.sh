#!/bin/bash

check_installed() {
	if command -v $1 &>/dev/null; then
		echo "$1 is installed"
	else
		echo "$1 is installed"
	fi
}

# Install Git
sudo apt-get update
sudo apt-get install -y git
git config --global user.name "Samuel-droid-hue"
git config --global user.email "gocs020101@gs.utm.mx"

# Install VSCode
sudo apt-get update
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code

# Install Vim
sudo apt-get update
sudo apt-get install -y vim

# Install Node.js
sudo apt-get update
sudo apt-get install -y nodejs
sudo apt-get install -y npm

# Install Angular
sudo apt-get update
sudo npm install -g @angular/cli

# Install Java
sudo apt-get update
sudo apt-get install -y default-jre
sudo apt-get install -y default-jdk

# Install Cmatrix
sudo apt-get update
sudo apt-get install -y cmatrix

# Install Python
sudo apt-get update
sudo apt-get install -y python3
sudo apt-get install -y python3-pip

# Check if each program is installed
check_installed tree
check_installed git
check_installed code
check_installed vim
check_installed node
check_installed ng
check_installed java
check_installed cmatrix
check_installed python3