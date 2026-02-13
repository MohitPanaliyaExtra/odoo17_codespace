#!/bin/bash

# 1. Check PostgreSQL Service
echo "🐘 Checking PostgreSQL..."
if sudo service postgresql status > /dev/null; then
    echo "✅ PostgreSQL is already running."
else
    echo "⚡ Starting PostgreSQL..."
    sudo service postgresql start
fi

# 2. Check if Odoo is already running on port 8069
echo "🌐 Checking for existing Odoo processes..."
OS_PID=$(lsof -t -i:8069)

if [ -z "$OS_PID" ]; then
    echo "🚀 Starting Odoo 17..."
    # We use the absolute path to the venv python to bypass manual activation
    ./odoo-venv/bin/python odoo/odoo-bin -c odoo.conf
else
    echo "⚠️ Odoo is already running (PID: $OS_PID) on port 8069."
    echo "Use 'kill $OS_PID' if you want to restart it."
    
    # Optional: Automatically show the URL for the running instance
    echo "------------------------------------------------"
    echo "URL: https://${CODESPACE_NAME}-8069.app.github.dev"
    echo "------------------------------------------------"
fi