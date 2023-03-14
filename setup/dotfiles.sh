#!/bin/bash
# Sets up dotfiles from a bare git repo

alias dots='/usr/bin/git --git-dir=$HOME/repos/dotfiles/' --work-tree=$HOME'

mkdir -p ~/repos/dotfiles/

git clone --bare https://github.com/DavidRambo/dotfiles.git

# From atlassian.com/git/tutorials/dotfiles

mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}

dots checkout

dots config --local status.showUntrackedFiles no
