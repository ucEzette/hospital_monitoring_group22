#!/bin/bash

# Define variables
GROUP_NUMBER=22  # Replace with your actual group number
ARCHIVE_DIR="archived_logs_group$GROUP_NUMBER"
REMOTE_USER="Elvin100s"  # Replace with your sandbox username
REMOTE_HOST="031d43926379"       # Replace with your sandbox host
REMOTE_DIR="/home/hp"           # Directory on the remote server

# Create the archived_logs directory if it doesn't exist
mkdir -p "$archived_logs_group$GROUP_NUMBER"

# Move all archived log files into the archived_logs directory
mv *heart_rate_log.txt_* "$ARCHIVE_DIR"  


# Back up the archived logs to the remote server
scp -r "$ARCHIVE_DIR"* "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"

echo "Backup completed successfully."

