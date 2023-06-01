#!/bin/bash
# Command-line utilities unavailable through Ubuntu's repositories

# Returns 0 if installed; 1 if not installed.
function check_installed {
	which $1 >/dev/null

	if [ $? = "0" ]; then
		return 0
	else
		return 1
	fi
}

# ls deluxe
if check_installed lsd; then
	echo "Already installed: lsd"
else
	echo "lsd check: Downloading and installing: lsd..."
	curl https://github.com/Peltoche/lsd/releases/download/0.23.1/lsd-musl_0.23.1_amd64.deb
	-o /home/david/Downloads/lsd.deb
	sudo dpkg -i /home/david/Downloads/lsd.deb
	rm /home/david/Downloads/lsd.deb
fi

# du + rust
if check_installed dust; then
	echo "dust check: Already installed: dust"
else
	echo "dust check: Downloading and installing: dust..."
	curl https://github.com/bootandy/dust/releases/download/v0.8.4/du-dust_0.8.4_amd64.deb -o /home/david/Downloads/dust.deb
	sudo dpkg -i /home/david/Downloads/dust.deb
	rm /home/david/Downloads/dust.deb
fi

# neovim
if check_installed nvim; then
	echo "Already installed: nvim"
else
	echo "Cloning and building neovim..."
	mkdir -p ~/repos
	cd ~/repos
	git clone https://github.com/neovim/neovim
	cd neovim
	sudo apt-get install -y ninja-build gettext cmake unzip curl
	sudo apt-get install -y g++ # for treesitter cc1plus error
	make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/.local/neovim"
	make install
fi

# rust
if check_installed cargo; then
	echo "Already installed: rust toolchain"
else
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi
