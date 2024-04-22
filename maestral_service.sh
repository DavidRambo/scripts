#!/bin/bash
# Run via systemd user service in ~/.config/systemd/user/maestral_service.service
# (or in /etc/systemd/user/maestral_service.service, which gets symlinked
# from the .config location).
# A copy of that file is preserved here.
# Once placed in the systemd user directory,
# install the service: systemctl --user daemon-reload
# either start it once: systemctl --user start maestral_service.service
# or enable it for automatic start: systemctl --user enable maestral_service.service
# The log can be viewed via: journalctl --user -u maestral_service

source ~/.local/share/maestral-venv/bin/activate

maestral start
