#!/bin/bash
mkdir -p /tmp/logs
cd /workspaces/html && \
nohup bash -c "npm start 2>&1 | tee -a /tmp/logs/server.log" > /dev/null 2>&1 &
