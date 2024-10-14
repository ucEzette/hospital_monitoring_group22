#!/bin/bash

# Define variables
GROUP_NUMBER=22  # Insert our group number
ARCHIVE_DIR="archived_logs_group$GROUP_NUMBER"  

# Ensure the ARCHIVE_DIR variable is correctly set
echo "Creating directory: $ARCHIVE_DIR"

# Create the archived_logs directory if it doesn't exist
mkdir -p "$ARCHIVE_DIR"

# Move all archived log files into the archived_logs directory
mv *heart_rate_log.txt_* "$ARCHIVE_DIR"  

# Back up the archived logs to the remote server
REMOTE_USER="031d43926379"  # Replace with your sandbox username
REMOTE_HOST="031d43926379.3a2627c1.alu-cod.online"      # Replace with your sandbox host
REMOTE_DIR="/home/"           # Directory on the remote server

scp -r "$ARCHIVE_DIR/"* "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"

echo "Backup completed successfully."

