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
sudo apt-get -y install alacritty android-studio code curl fish fonts-firacode geary gimp git gnome-tweaks gnome-calendar golang htop openjdk-11-jdk transmission tree typora ranger ubuntu-restricted-extras vim vlc

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
sudo snap install discord mysql-workbench-community postman robo3t-snap xournalpp zoom-client

#################################################################
#                     CREATE DIRECTORIES                        #
#################################################################

mkdir -p ~/Code/work
mkdir -p ~/Code/personal

# Techairos Directories
mkdir -p ~/Code/work/abalobi
mkdir -p ~/Code/work/bip
mkdir -p ~/Code/work/devops
mkdir -p ~/Code/work/wta
mkdir -p ~/Code/work/xpl

#################################################################
#                   SETUP KEYBOARD SHORTCUTS                    #
#################################################################
# TODO
# gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "[]"