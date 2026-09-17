#!/usr/bin/env bash

# Update package metadata
sudo apt update

# Install Nginx
sudo apt install -y nginx

# Check service state
sudo systemctl status nginx --no-pager

# Start now and enable at boot
sudo systemctl enable --now nginx

# Verify service state
sudo systemctl is-active nginx
sudo systemctl is-enabled nginx

# Verify port 80
sudo ss -tulpn | grep ':80' || true

# Test the local web service
curl http://localhost
curl -I http://localhost

# Test the public endpoint from the server.
# Replace with the instance public IP if desired:
# curl -I http://YOUR_PUBLIC_IP

# Nginx logs
sudo journalctl -u nginx --since "1 hour ago" --no-pager

# Traditional Nginx log files
sudo ls -lah /var/log/nginx/
