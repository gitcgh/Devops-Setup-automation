cat << 'EOF' > scripts/backup.sh
#!/bin/bash
echo "Creating logs backup..."
tar -czf ../backups/logs-backup.tar.gz ../logs
echo "Backup saved to backups/logs-backup.tar.gz"
EOF
