#!/usr/bin/bash

if [ ! -d ~/repos/ ]; then
    mkdir ~/repos
fi

if [ ! -d ~/repos/neovim/ ]; then
    cd ~/repos
    git clone https://github.com/neovim/neovim.git
else
    cd ~/repos/neovim/
    echo -e ">>> Pulling neovim repo..."
    git pull
fi

cd ~/repos/neovim/ && rm -r build

make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/.local/neovim"

make install
