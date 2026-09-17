#!/usr/bin/env bash

# Identity and system information
whoami
hostname
pwd
date
uname -a
cat /etc/os-release

# Directory navigation
cd /tmp
pwd
cd ~
pwd

# Create a lab directory
mkdir -p ~/linux-lab
cd ~/linux-lab
pwd

# Create and read files
touch notes.txt
echo "Linux practice" > notes.txt
echo "Second line" >> notes.txt
cat notes.txt

# Copy, rename, and remove
cp notes.txt backup.txt
mv backup.txt old-notes.txt
ls -la
rm old-notes.txt

# Useful listing variations
ls
ls -l
ls -la
