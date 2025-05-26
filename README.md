# Devops-Setup-automation
The goal is to simplify setting up a DevOps environment, validate tool installation, and log all activities for review.

# Linux Practice & Scripting Automation (With AI Assistance)

## 💡 Project Intention

This repository simulates a real-time DevOps environment to help me practice Linux commands, shell scripting, and file management. I also used AI (ChatGPT) to assist me in understanding the problem, writing scripts, and automating small DevOps tasks.

## 📁 Folder Structure
linux-Scripts/
├── backups/ # Contains archived log files
├── config/ # Config files for simulated services
├── logs/ # Dummy application, system, and nginx logs
├── reports/ # Usage and error summary reports
├── scripts/ # Automation scripts (deploy, backup, etc.)
└── README.md # Project documentation


## ⚙️ Tasks Performed

### 1. Scripted Environment Setup

Created a folder structure and dummy files using Bash scripts:
- `scripts/deploy.sh`: Simulates application deployment
- `scripts/backup.sh`: Creates a tar archive of logs

### 2. File and Log Management

- Practiced Linux commands like `grep`, `cat`, `awk`, `sed`, `cut`, `sort`, etc.
- Parsed logs, extracted fields, and generated reports.

### 3. AI-Assisted Scripting

I used AI (ChatGPT) to help:
- Design file structures
- Write shell scripts
- Understand Linux commands and flags
- Break down complex tasks into manageable steps

## 🔍 Example Commands Practiced

```bash
grep "ERROR" logs/app.log
awk '{print $1, $2}' logs/nginx.log
tar -czf backups/archive.tar.gz logs/



