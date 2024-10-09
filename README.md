
# Data handling and monitoring with Linux in the Hospital

1. Script Name: heart_rate_monitor.sh
# Prompt user for the device name
# logs heart rate data >> "heart_rate_log.txt"
# Get current timestamp
# Generates a random heart rate between 40 and 100

# Heart Rate Monitoring, Archival, and Backup Scripts

## Overview
This project consists of three shell scripts designed to simulate heart rate monitoring, log archival, and secure backup of archived files to a remote server. The scripts are:
1. **heart_rate_monitor.sh** - Simulates heart rate monitoring and logs the data every second.
2. **archive_log.sh** - Archives the log file by renaming it with a timestamp.
3. **backup_archives.sh** - Moves archived log files to a designated directory and backs them up to a remote server using SSH.

---

## Task 1: Heart Rate Monitoring Script

### Script Name: `heart_rate_monitor.sh`

### Description:
This script records heart rate data every second and logs it into `heart_rate_log.txt`. The log includes:
- Timestamp (YYYY-MM-DD HH:MM:SS)
- Device name (user input)
- Simulated heart rate (randomized between 40-100 bpm)

The script runs in the background, and its process ID (PID) is displayed for management.

### Usage:

1. Make the script executable:
   ```bash
   chmod +x heart_rate_monitor.sh

