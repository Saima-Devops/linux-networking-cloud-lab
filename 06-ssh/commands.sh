#!/usr/bin/env bash

# On your LOCAL machine, protect the EC2 private key:
# chmod 400 my-key.pem

# Connect from your LOCAL machine:
# ssh -i my-key.pem ubuntu@YOUR_PUBLIC_IP

# Generate a practice Ed25519 key on a machine where you control the private key.
ssh-keygen -t ed25519 -C "linux-lab"

# Inspect the public key.
cat ~/.ssh/id_ed25519.pub

# Never display, upload, or commit the private key:
# ~/.ssh/id_ed25519