#!/usr/bin/env bash

whoami
id

# Inspect local account information
cat /etc/passwd
grep "$(whoami)" /etc/passwd

# Create a test user.
# This is interactive and asks for a password/details.
sudo adduser labuser

# Verify the account
id labuser

# Create a test group
sudo groupadd developers

# Add the test user to the supplementary group
sudo usermod -aG developers labuser

# Verify group membership
groups labuser
id labuser

# Optional: switch to the test user
# su - labuser
# exit
