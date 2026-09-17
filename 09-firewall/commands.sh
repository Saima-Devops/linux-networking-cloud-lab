#!/usr/bin/env bash

# Inspect current firewall state
sudo ufw status
sudo ufw status verbose

# IMPORTANT: allow SSH before enabling UFW on a remote EC2 instance.
sudo ufw allow 22/tcp

# Allow HTTP for the Nginx service.
sudo ufw allow 80/tcp

# Enable UFW.
sudo ufw enable

# Verify rules.
sudo ufw status numbered

# Example of deleting an HTTP rule:
# sudo ufw delete allow 80/tcp
