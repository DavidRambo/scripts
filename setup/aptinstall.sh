#!/bin/bash
# Install packages

sudo apt update

function install {
    which $1 &> /dev/null

    if [ $? -ne 0 ]; then
        echo "Installing: ${1}..."
        sudo apt install -y $1
    else
        echo "Already installed: ${1}"
    fi
}


install font-manager
install fonts-font-awesome
install fzf
install htop
install tree
install vim
install zsh
