#!/bin/bash
# Setup fresh install of Pop!_OS

source ./dotfiles.sh
source ./aptinstall.sh
source ./gsettings.sh

cd programs
source utils.sh
source python.sh
source gnome_extensions.sh

# Upgrade packages
sudo apt upgrade -y
