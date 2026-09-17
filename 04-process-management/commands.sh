#!/usr/bin/env bash

# List processes
ps
ps aux

# Search for SSH processes
pgrep ssh
pgrep -a ssh

# Start a harmless test process in the background
sleep 300 &
PID=$!

echo "Test sleep PID: $PID"

# Find it
pgrep -a sleep

# Terminate the test process
kill "$PID"

# System resource checks
free -h
df -h
du -sh ~/linux-lab 2>/dev/null || true

# Interactive process viewer
# top
