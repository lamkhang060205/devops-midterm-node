#!/bin/bash

# ==========================================
# DevOps Midterm - Phase 1 Automation Script
# Purpose:
#   - Prepare Ubuntu environment
#   - Install Node.js, npm
#   - Install project dependencies
#   - Create uploads directory
# ==========================================

set -e  # Stop script if any command fails

echo "=============================="
echo "Starting environment setup..."
echo "=============================="

# 1. Update system packages
echo "Updating system packages..."
sudo apt update -y

# 2. Install curl if not installed
if ! command -v curl &> /dev/null
then
    echo "Installing curl..."
    sudo apt install curl -y
fi

# 3. Install Node.js (LTS via NodeSource)
if ! command -v node &> /dev/null
then
    echo "Installing Node.js LTS..."
    curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
    sudo apt install -y nodejs
else
    echo "Node.js already installed."
fi

# 4. Show Node & npm version
echo "Node version:"
node -v
echo "NPM version:"
npm -v

# 5. Install project dependencies
echo "Installing npm dependencies..."
npm install

# 6. Create uploads directory if not exists
UPLOADS_DIR="public/uploads"

if [ ! -d "$UPLOADS_DIR" ]; then
    echo "Creating uploads directory..."
    mkdir -p $UPLOADS_DIR
else
    echo "Uploads directory already exists."
fi

echo "=============================="
echo "Setup completed successfully."
echo "You can now run:"
echo "npm start"
echo "=============================="