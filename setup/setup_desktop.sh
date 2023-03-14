#!/bin/bash
# Setup fresh install of Pop!_OS

source ./dotfiles.sh
source ./aptinstall.sh
source ./gsettings.sh

# Upgrade packages
sudo apt upgrade -y
