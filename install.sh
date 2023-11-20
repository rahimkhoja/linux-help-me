#!/bin/bash

# Determine the package manager (apt for Debian/Ubuntu, yum for RHEL/CentOS)
if command -v apt > /dev/null; then
    PM="apt"
elif command -v yum > /dev/null; then
    PM="yum"
else
    echo "Unsupported package manager"
    exit 1
fi

# Install Python3 and Git using the detected package manager
sudo $PM update
sudo $PM install -y python3 git

# Install Python packages from requirements.txt
sudo pip3 install -r requirements.txt

# Copy the help-me script to /usr/local/bin and make it executable
sudo cp help-me /usr/local/bin/
sudo chmod +x /usr/local/bin/help-me

echo "Installation complete."
