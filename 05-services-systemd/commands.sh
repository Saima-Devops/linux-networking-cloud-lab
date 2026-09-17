#!/usr/bin/env bash

# SSH service checks
sudo systemctl status ssh --no-pager
sudo systemctl is-active ssh
sudo systemctl is-enabled ssh

# Service actions - run only when appropriate.
# sudo systemctl start ssh
# sudo systemctl restart ssh
# sudo systemctl stop ssh

# Enable SSH at boot without needing a separate start command
sudo systemctl enable --now ssh

# Logs
sudo journalctl -u ssh --since "1 hour ago" --no-pager

# Follow logs interactively:
# sudo journalctl -f
