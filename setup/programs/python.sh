#!/bin/bash

function check_installed {
    which $1 > /dev/null

    if [ $? = "0" ]; then
        return 0
    else
        return 1
    fi
}

# Script to setup Python
# Note that pip and venv are installed in ../aptinstall.sh

# pipx
if check_installed pipx; then
    echo "Already installed: pipx"
else
    python3 -m pip install --user pipx
    python3 -m pipx ensurepath
fi

# pyenv
if check_installed pyenv; then
    echo "Already installed: pyenv"
else
    curl https://pyenv.run | bash
fi
