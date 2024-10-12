#!/bin/bash

# Log file
log_file="heart_rate_log.txt"

# Check if the log file exists
if [ ! -f "$log_file" ]; then
    echo "Log file '$log_file' does not exist. Please run the heart rate monitoring script first."
    exit 1
fi

# Get the current timestamp in the desired format
timestamp=$(date "+%Y%m%d_%H%M%S")

# Create the new archive log name
archive_log_file="${log_file}_${timestamp}"

# Rename the original log file to create the archive
mv "$log_file" "$archive_log_file"

# Notify the user of the successful archiving
echo "Log file archived as: $archive_log_file"

