# **Node.js Sample Application — Deployed on AWS EC2 (Ubuntu)**
This is a simple, production-ready Node.js Express application deployed on an Ubuntu-based EC2 instance.
This project demonstrates end-to-end DevOps skills — server setup, package management, Git workflow, and application deployment.
---

## **📁 Project Structure**
```
nodejs-sample-app/
├── app.js
├── package.json
├── README.md
└── scripts/
    └── deploy.sh
```
---

## **Tech Stack**

- AWS EC2 (Ubuntu 22.04 LTS)
- Node.js (Express Framework) - Sample
- Git & GitHub
- Linux (Ubuntu)
- Security Groups
- Shell Scripting

---
## **How to Deploy on AWS EC2 (Ubuntu)**

### 1️⃣ Launch an EC2 Instance

- AMI: Ubuntu 22.04 LTS
- Instance Type: t2.micro (Free-tier)
- Security Group Ports:
     - 22 → SSH
     - 3000 → Node.js App
---

### 2️⃣ Connect to EC2 via SSH
```
ssh -i your-key.pem ubuntu@<EC2-PUBLIC-IP>
```

---

### 3️⃣ Run Deployment Script
Clone your repository (after pushing your code to GitHub):
```
sudo apt update -y
sudo apt install -y git

git clone https://github.com/<your-username>/nodejs-sample-app.git
cd nodejs-sample-app/scripts
chmod +x deploy.sh
./deploy.sh
```
This script will:
✔ Update the server
✔ Install Node.js 18
✔ Install Git
✔ Clone your repo
✔ Install app dependencies
✔ Start the app using nohup

---

### Deployment Script (Ubuntu) — scripts/deploy.sh
```
#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

# Install Node.js & Git
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs git

# Clone Repository
git clone https://github.com/<your-username>/nodejs-sample-app.git
cd nodejs-sample-app

# Install Dependencies
npm install

# Start Application
nohup npm start &

echo "✅ Node.js App Deployed Successfully on Ubuntu EC2!"
```
---

## Access Your Application
Open your browser:
```
http://<EC2-PUBLIC-IP>:3000
```
---

# "Node.js App Deployed on AWS EC2 (Ubuntu) — Successfully deployed by Shipra."
