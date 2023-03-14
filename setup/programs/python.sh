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
    source $XDG_CONFIG_HOME/zsh/.zshrc
fi

# pyenv
if check_installed pyenv; then
    echo "Already installed: pyenv"
else
    curl https://pyenv.run | bash

    pyenv install -v 3.11.1
    pyenv global 3.11.1
fi

# hatch
if check_installed hatch; then
    echo "Already installed: hatch"
else
    pipx install hatch
    _HATCH_COMPLETE=zsh_source hatch > $ZDOTDIR/.hatch-complete.zsh
fi

