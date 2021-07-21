#!/bin/sh

#################################################################
#                       SETUP DOTFILES                          #
#################################################################

cp -r --symbolic-link --remove-destination /home/andrew/.dotfiles/.config/* /home/andrew/.config

#################################################################
#                         SETUP PPA'S                           #
#################################################################

# Alacritty
sudo add-apt-repository -y ppa:aslatter/ppa

# Android studio
sudo add-apt-repository -y ppa:maarten-fonville/android-studio

# Typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository -y 'deb https://typora.io/linux ./'

# Visual Studio Code
sudo apt-get -y install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

# Update
sudo apt-get -y update
sudo apt-get -y upgrade

#################################################################
#                      INSTALL PROGRAMS                         #
#################################################################

# APT Packages
sudo apt-get -y install alacritty android-studio code curl fish fonts-firacode geary gimp git gnome-tweaks golang openjdk-11-jdk transmission typora ranger ubuntu-restricted-extras vim xournalpp

# Fish packages
omf install
source /home/andrew/.config/fish/config.fish

# NodeJS
nvm install 14.6

# Slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.12.2-amd64.deb
sudo dpkg -i slack-desktop-4.12.2-amd64.deb 
rm slack-desktop-4.12.2-amd64.deb

# Snap Packages
sudo snap install discord mysql-workbench-community postman robo3t-snap zoom-client

#################################################################
#                     CREATE DIRECTORIES                        #
#################################################################

sudo mkdir -p ~/Code/work
sudo mkdir -p ~/Code/personal
