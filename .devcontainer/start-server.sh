#!/bin/bash

cd /workspaces/html
nohup node server.js > /tmp/server.log 2>&1 &
