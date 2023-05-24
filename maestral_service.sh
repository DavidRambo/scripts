#!/bin/bash
# Run via systemd user service in /etc/systemd/user/maestral_service.service
# A copy of that file is preserved here.
# Once placed in the systemd user directory,
# install the service: systemctl --user daemon-reload
# either start it once: systemctl --user start maestral_service.service
# or enable it for automatic start: systemctl --user enable maestral_service.service

source ~/.local/share/maestral-venv/bin/activate

maestral start
