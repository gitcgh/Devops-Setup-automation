nano devops-setup.sh


#!/bin/bash

set -euo pipefail

LOGFILE="devops-setup.log"
DRYRUN=false
INSTALLED_TOOLS=()
SKIPPED_TOOLS=()

# Help menu
if [[ "${1:-}" == "--help" ]]; then
  echo "Usage: $0 [--dry-run]"
  echo "       --dry-run  Simulate installation without making any changes."
  exit 0
fi

# Check for dry-run flag
if [[ "${1:-}" == "--dry-run" ]]; then
  DRYRUN=true
  echo "🧪 Dry-run mode enabled. No changes will be made." | tee -a "$LOGFILE"
fi

echo "🔧 DevOps Setup Script Started at $(date)" | tee -a "$LOGFILE"
echo "---------------------------------------------" | tee -a "$LOGFILE"

# Update package list if not dry-run
if [ "$DRYRUN" = false ]; then
  echo "🔄 Updating package list..." | tee -a "$LOGFILE"
  sudo apt-get update >> "$LOGFILE" 2>&1
fi

# Tool categories (for readability)
basic_tools=(curl wget vim nano tree)
network_tools=(net-tools iproute2 traceroute nmap telnet tcpdump dnsutils)
monitoring_tools=(htop lsof sysstat iotop ncdu)
devops_tools=(git jq httpie awscli ansible)

tools=("${basic_tools[@]}" "${network_tools[@]}" "${monitoring_tools[@]}" "${devops_tools[@]}")

# Tool installation loop
for tool in "${tools[@]}"; do
  echo -n "🔍 Checking for $tool... " | tee -a "$LOGFILE"

  if ! command -v "$tool" &>/dev/null; then
    echo "❌ Not installed." | tee -a "$LOGFILE"
    if [ "$DRYRUN" = false ]; then
      echo "📦 Installing $tool..." | tee -a "$LOGFILE"
      if sudo apt-get install -y "$tool" >> "$LOGFILE" 2>&1; then
        INSTALLED_TOOLS+=("$tool")
      else
        echo "❌ Failed to install $tool. See log for details." | tee -a "$LOGFILE"
      fi
    else
      echo "🧪 Would install $tool (dry-run)" | tee -a "$LOGFILE"
    fi
  else
    echo "✅ Already installed." | tee -a "$LOGFILE"
    SKIPPED_TOOLS+=("$tool")
  fi
done

# Summary
echo -e "\n📋 Installation Summary:" | tee -a "$LOGFILE"
if [ "$DRYRUN" = true ]; then
  echo "🧪 Dry-run mode: No tools were actually installed." | tee -a "$LOGFILE"
else
  echo "✅ Installed tools: ${#INSTALLED_TOOLS[@]}" | tee -a "$LOGFILE"
  for tool in "${INSTALLED_TOOLS[@]}"; do
    echo "   - $tool" | tee -a "$LOGFILE"
  done
fi

echo "🧰 Already present: ${#SKIPPED_TOOLS[@]}" | tee -a "$LOGFILE"
for tool in "${SKIPPED_TOOLS[@]}"; do
  echo "   - $tool" | tee -a "$LOGFILE"
done

echo "✅ DevOps setup completed at $(date)." | tee -a "$LOGFILE"
