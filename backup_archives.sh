#!/bin/bash

# Define variables
GROUP_NUMBER=22  # Replace with your actual group number
ARCHIVE_DIR="archived_logs_group22"
REMOTE_USER="Elvin100s"  # Replace with your sandbox username
REMOTE_HOST="031d43926379"  # Replace with your sandbox host
REMOTE_DIR="/home/hp"  # Directory on the remote server

# Create the archived_logs directory if it doesn't exist
mkdir -p archived_logs_group22

# Move all archived log files into the archived_logs directory
mv *archive*.log archived_logs_group22/  # Adjust the pattern as needed

# Back up the archived logs to the remote server
scp -r archived_logs_group$ /* Elvin100sR@031d43926379:archived_logs_group22

echo "Backup completed successfully."
