#!/bin/bash
# Add Gnome extensions

if [ -d ~/.local/share/gnome-shell/extensions/horizontal-workspace-indicator@tty2.io/ ]; then
    echo "Horizontal workspace extension already installed"
else
    mkdir -p ~/.local/share/gnome-shell/extensions/

    # Horizontal Workspace Indicator
    wget https://github.com/tty2/horizontal-workspace-indicator/releases/download/v0.3.0/horizontal-workspace-indicatortty2.io.zip

    unzip horizontal-workspace-indicatortty2.io.zip -d ~/.local/share/gnome-shell/extensions/horizontal-workspace-indicator@tty2.io/
    rm horizontal-workspace-indicatortty2.io.zip

    dconf write /org/gnome/shell/extensions/horizontal-workspace-indicator/icons-style "'dots'"
    dconf write /org/gnome/shell/extensions/horizontal-workspace-indicator/widget-orientation "'horizontal'"
    dconf write /org/gnome/shell/extensions/horizontal-workspace-indicator/widget-position "'left'"

    dconf write /org/gnome/shell/enabled-extensions "['horizontal-workspace-indicator@tty2.io']"
fi
