#!/bin/bash

# Update Ubuntu
sudo apt update -y
sudo apt upgrade -y

# Install Node.js (LTS 18) & Git
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs git

# Clone your repository
git clone https://github.com/<your-username>/nodejs-sample-app.git
cd nodejs-sample-app

# Install Node.js dependencies
npm install

# Start the app in the background
nohup npm start &

echo "Node.js app deployed successfully!"
