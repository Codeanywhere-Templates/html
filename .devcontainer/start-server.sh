#!/bin/bash

# Create log directory
mkdir -p /tmp/logs

# Clear previous log if it exists
echo "Starting server at $(date)" > /tmp/logs/server.log

# Running in background with proper logging
cd /workspaces/html && \
nohup bash -c "npm start 2>&1 | tee -a /tmp/logs/server.log" > /dev/null 2>&1 &

# Save the process ID
echo $! > /tmp/logs/server.pid

echo "Server process started with PID $(cat /tmp/logs/server.pid)"
echo "Monitor with: tail -f /tmp/logs/server.log"
