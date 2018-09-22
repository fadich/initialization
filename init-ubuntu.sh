#!/usr/bin/env bash

sudo apt-get update


# Install NVidia Drivers
sudo apt-get purge nvidia*
sudo add-apt-repository ppa:graphics-drivers
sudo apt-get update
sudo apt-get install -y nvidia-384


# Install Guake Terminal
sudo apt-get install -y guake


# Install Git
sudo apt install -y git
git config --global user.email "royalfadich@gmail.com"
git config --global user.name "Fadi A."


# Install Python3.6
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install -y python3.6
python3 -V


# Install Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install -y google-chrome-stable


# Install Unity Tweak Tool
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle
sudo apt-get install unity-tweak-tool


# Customize Keys
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier "<Super>"


# Done.
reboot
