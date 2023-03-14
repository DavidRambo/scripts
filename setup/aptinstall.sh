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

install build-essential
install curl
install font-manager
install fonts-font-awesome
install fzf
install htop
install libffi-dev 
install liblzma-dev
install libncursesw5-dev 
install libreadline-dev 
install libsqlite3-dev 
install libssl-dev 
install libbz2-dev 
install libxml2-dev 
install libxmlsec1-dev
install llvm
install make
install python3-pip
install python3-venv
install tk-dev 
install tree
install vim
install wget
install xz-utils 
install zlib1g-dev
install zsh
install zsh-syntax-highlighting
install zsh-autosuggestions
