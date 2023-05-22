#!/bin/bash
# Sets up dotfiles from a bare git repo

alias dots='/usr/bin/git --git-dir=/home/david/repos/dotfiles/ --work-tree=/home/david'

if [ -e /home/david/repos/dotfiles/.gitignore ]; then
	echo "dotfiles already cloned"
else
	mkdir -p /home/david/repos/dotfiles/

	git clone --bare https://github.com/DavidRambo/dotfiles.git /home/david/repos/dotfiles/

	# From atlassian.com/git/tutorials/dotfiles
	mkdir -p .config-backup &&
		dots checkout 2>&1 | egrep "\s+\." | awk {'print $1'} |
		xargs -I{} mv {} .config-backup/{}

	dots checkout

	dots config --local status.showUntrackedFiles no
fi

# Neovim config

if [ -e /home/david/.config/nvim/.gitignore ]; then
	echo "Neovim config already cloned"
else
	mkdir -p ~/.config/nvim

	git clone git@github.com:DavidRambo/nvim.git

fi
