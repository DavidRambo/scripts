#!/bin/bash
# Setup fresh install of Pop!_OS

./dotfiles.sh
./aptinstall.sh
./gsettings.sh

# Upgrade packages
sudo apt upgrade -y
