# 🚀 DevOps Setup Automation

This project showcases a **Linux-based DevOps automation setup** using shell scripting. It includes:

1. ✅ A **DevOps Tool Auto-Installer** to install essential packages.
2. 🛠️ A structured **Linux scripting mini-project** demonstrating backup, deployment, logging, reporting, and config management.
3. 📸 Screenshot previews to visualize each section.

---

## 📁 Project Structure

DevOps2025/
├── devops-toolsetup.sh # Script to auto-install DevOps tools
├── devops-setup.log # Log file from tool setup script
├── linux-Scripts/ # Linux shell scripting mini-project
│ ├── backups/ # Contains backup tar file
│ ├── config/ # Configuration files like app.conf
│ ├── logs/ # Simulated application & nginx logs
│ ├── reports/ # Error & usage reports
│ └── scripts/ # backup.sh and deploy.sh scripts
├── screenshots/ # Visual previews of the setup
└── README.md # 📄 You're here!


---

## 🔧 DevOps Tool Auto-Installer

📄 **Script**: [`devops-toolsetup.sh`](./devops-toolsetup.sh)

This shell script:

- Installs essential **DevOps**, **networking**, and **monitoring** tools
- Logs all installation steps to `devops-setup.log`
- Includes a `--dry-run` flag to simulate installation steps without making changes

### 🛠️ Tools Installed

- **Basic Utilities**: `curl`, `wget`, `vim`, `nano`, `tree`
- **Networking**: `net-tools`, `iproute2`, `nmap`, `traceroute`, `telnet`, `tcpdump`
- **Monitoring**: `htop`, `lsof`, `sysstat`, `iotop`, `ncdu`
- **DevOps Tools**: `git`, `jq`, `httpie`, `awscli`, `ansible`

---

## 🗃️ Linux Scripts Mini Project

📁 Located in [`linux-Scripts`](./linux-Scripts/), this simulates real-world system automation tasks.

### 📜 Main Scripts

- [`scripts/backup.sh`](./linux-Scripts/scripts/backup.sh) → Compress and archive files into the backups folder
- [`scripts/deploy.sh`](./linux-Scripts/scripts/deploy.sh) → Simulated deployment process (logs actions, uses config)

### 📂 Key Folders

- `logs/` → Contains `app.log` and `nginx.log`
- `config/` → Contains `app.conf` (or similar configuration files)
- `reports/` → Contains error and usage summaries
- `backups/` → Output of the backup process

---

## ✅ How to Use

### 🔹 Step 1: Run the Tool Installer

```bash
chmod +x devops-toolsetup.sh
./devops-toolsetup.sh

➡️ For a dry run (no changes made):

./devops-toolsetup.sh --dry-run

 Step 2: Run Sample Scripts
cd linux-Scripts/scripts
chmod +x *.sh
./backup.sh
./deploy.sh

📸 Screenshot Previews
📁 Folder Structure


🛠️ DevOps Tool Setup


🗄️ Backup Script Overview


🚀 Deploy Script Flow

📌 Key Highlights
🧩 Modular & Organized folder structure

📋 Idempotent scripting logic and proper logging

📸 Screenshots for visual walkthrough

💡 Great starting point for real-world DevOps practice

🤝 Let's Connect
If you're passionate about automation and DevOps scripting like me, feel free to explore this repo, suggest improvements, or connect!
