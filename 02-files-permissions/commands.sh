#!/usr/bin/env bash

mkdir -p ~/linux-lab/permissions
cd ~/linux-lab/permissions

touch permissions.txt secret.txt script.sh

# Inspect initial permissions
ls -l

# Owner read/write only
chmod 600 secret.txt

# Owner full access; group/others read and execute
chmod 755 script.sh

# Verify
ls -l secret.txt script.sh

# Ownership example
sudo chown "$(whoami):$(id -gn)" permissions.txt
ls -l permissions.txt

# Inspect your current user and groups
id
