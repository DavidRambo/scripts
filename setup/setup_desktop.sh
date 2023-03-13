#!/bin/bash
# Setup fresh install of Ubuntu derivative

./dotfiles.sh
./aptinstall.sh
./gsettings.sh

# Upgrade packages
sudo apt upgrade -y
