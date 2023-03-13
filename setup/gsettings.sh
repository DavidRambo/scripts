#!/bin/bash
# Apply gsettings

# Gnome Workspace Navigation
gsettings set org.gnome.desktop.wm.keybindings minimize "['<Shift><Super>h']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Super>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Super>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Super>4']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Shift><Super>exclam']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Shift><Super>at']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Shift><Super>numbersign']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Shift><Super>dollar']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Primary><Super>Down', '<Primary><Super>KP_Down', '<Primary><Super>e', '<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Primary><Super>Up', '<Primary><Super>KP_Up', '<Primary><Super>u', '<Shift><Super>Tab']"

# Pop Shell
gsettings set org.gnome.shell.extensions.pop-shell active-hint "true"
gsettings set org.gnome.shell.extensions.pop-shell active-hint-border-radius "uint32 2"
gsettings set org.gnome.shell.extensions.pop-shell gap-inner "uint32 3"
gsettings set org.gnome.shell.extensions.pop-shell gap-outer "uint32 3"
gsettings set org.gnome.shell.extensions.pop-shell hint-color-rgba "'rgb(110,115,141)'"

gsettings set org.gnome.shell.extensions.pop-shell focus-down "['<Super>Down', '<Super>KP_Down', '<Super>e']"
gsettings set org.gnome.shell.extensions.pop-shell focus-left "['<Super>Left', '<Super>KP_Left', '<Super>n']"
gsettings set org.gnome.shell.extensions.pop-shell focus-right "['<Super>Right', '<Super>KP_Right', '<Super>i']"
gsettings set org.gnome.shell.extensions.pop-shell focus-up "['<Super>Up', '<Super>KP_Up', '<Super>u']"

gsettings set org.gnome.shell.extensions.pop-shell tile-move-down-global "['<Shift><Super>e']"
gsettings set org.gnome.shell.extensions.pop-shell tile-move-left-global "['<Shift><Super>n']"
gsettings set org.gnome.shell.extensions.pop-shell tile-move-right-global "['<Shift><Super>i']"
gsettings set org.gnome.shell.extensions.pop-shell tile-move-up-global "['<Shift><Super>u']"
gsettings set org.gnome.shell.extensions.pop-shell tile-orientation "['<Super>o']"

# Application Hotkeys
gsettings set org.gnome.settings-daemon.plugins.media-keys calculator "['<Super>c']"
gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>h']"
gsettings set org.gnome.settings-daemon.plugins.media-keys www "['<Super>b', '<Super>f']"

# Wezterm launcher
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0]"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0 name "wezterm"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0 command "wezterm"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0 bindings "<Super>t"
