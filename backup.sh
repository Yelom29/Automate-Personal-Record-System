#!/bin/bash

# Configuration
BACKUP_DIR="/path/to/backup/directory"
PERSONAL_RECORD_FILE="/path/to/personal/record/file"

# Function to create a backup
function create_backup() {
  local timestamp=$(date +"%Y%m%d_%H%M%S")
  local backup_file="${BACKUP_DIR}/personal_record_${timestamp}.bak"
  cp "${PERSONAL_RECORD_FILE}" "${backup_file}"
  echo "Backup created: ${backup_file}"
}

# Schedule daily backups at 2 AM
echo "0 2 * * * create_backup" | crontab -
