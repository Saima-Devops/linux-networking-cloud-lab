#!/usr/bin/env bash

# IP addresses and interfaces
ip addr
ip a

# Routing table
ip route

# Listening TCP/UDP ports
sudo ss -tulpn

# Check whether HTTP port 80 is listening
sudo ss -tulpn | grep ':80' || true

# Connectivity tests
ping -c 4 127.0.0.1
ping -c 4 8.8.8.8
ping -c 4 google.com

# HTTP request examples
curl -I https://example.com
