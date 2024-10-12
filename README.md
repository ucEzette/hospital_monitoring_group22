
# Data handling and monitoring with Linux in the Hospital

## Overview
This project consists of three shell scripts designed to simulate heart rate monitoring, log archival, and secure backup of archived files to a remote server. The scripts are:

1. heart_rate_monitor.sh - Simulates heart rate monitoring and logs the data every second.
2. archive_log.sh - Archives the log file by renaming it with a timestamp.
3. backup_archives.sh - Moves archived log files to a designated directory and backs them up to a remote server using SSH.

1. Script Name: heart_rate_monitor.sh
### Description:
This script records heart rate data every second and logs it into heart_rate_log.txt The log includes:
# Prompt user for the device name
# logs heart rate data >> "heart_rate_log.txt"
# Get current timestamp
# Generates a random heart rate between 40 and 100
# Heart Rate Monitoring, Archival, and Backup Scripts

2. Script Name: archive_log.sh
### Description:
# The archive_log.sh shell script is designed to archive the heart rate log file named heart_rate_log.txt.
# When executed, it first checks if the log file exists; if not, it prompts the user to run the heart rate monitoring script.
# If the log file is present, the script renames it by appending a timestamp in the format YYYYMMDD_HHMMSS, creating a unique archive file.
# This renaming helps organize historical log data, making it easier to manage and retrieve later.
# After archiving, the script notifies the user of the new file name for reference.
