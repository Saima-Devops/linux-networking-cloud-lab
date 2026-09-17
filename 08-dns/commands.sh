#!/usr/bin/env bash

# System name resolution
getent hosts google.com

# Install dig if needed
sudo apt update
sudo apt install -y dnsutils

# DNS queries
dig google.com
dig A google.com
dig AAAA google.com
