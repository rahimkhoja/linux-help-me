#!/bin/bash

# Prompt for OpenAI API key
read -p "Enter your OpenAI API key: " api_key
export OPENAI_API_KEY=$api_key

# Set the API key for all users
echo "export OPENAI_API_KEY=$api_key" | sudo tee -a /etc/profile

# Detect system type and install Python3 and Git
if command -v apt > /dev/null; then
    sudo apt update
    sudo apt install -y python3 git
elif command -v yum > /dev/null; then
    sudo yum install -y python3 git
else
    echo "Unsupported package manager. Only APT and YUM are supported."
    exit 1
fi

# Install Python requirements
sudo pip install -r requirements.txt

# Copy and set executable permissions for the help-me script
sudo cp usr/local/bin/help-me /usr/local/bin/
sudo chmod +x /usr/local/bin/help-me

echo "Installation complete."
