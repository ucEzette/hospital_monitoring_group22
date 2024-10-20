# Data handling and monitoring with Linux in the Hospital

## Overview

This project consists of three shell scripts designed to simulate heart rate monitoring, log archival, and secure backup of archived files to a remote server. The scripts are:

1. heart_rate_monitor.sh - Simulates heart rate monitoring and logs the data every second.
2. archive_log.sh - Archives the log file by renaming it with a timestamp.
3. backup_archives.sh - Moves archived log files to a designated directory and backs them up to a remote server using SSH.

**1. Script Name: heart_rate_monitor.sh**
  
  ** `Description:` **

This script records heart rate data every second and logs it into heart_rate_log.txt The log includes:
* `Prompt user for the device name`
* `logs heart rate data >> "heart_rate_log.txt"`
* `Get current timestamp`
* `Generates a random heart rate between 40 and 100`
* `Heart Rate Monitoring, Archival, and Backup Scripts`

*Uche/Karabo*

**2. Script Name: archive_log.sh**

  ** `Description:` **

* `The archive_log.sh shell script is designed to archive the heart rate log file named heart_rate_log.txt.`
* `When executed, it first checks if the log file exists; if not, it prompts the user to run the heart rate monitoring script.`
* `If the log file is present, the script renames it by appending a timestamp in the format YYYYMMDD_HHMMSS, creating a unique archive file.`
* `This renaming helps organize historical log data, making it easier to manage and retrieve later.`
* `After archiving, the script notifies the user of the new file name for reference.`

*Angel*

**3. Script Name: backup_archives.sh**

  ** `Description:` **

* `The backup_archives.sh is designed to move archived log files into a designated directory called archived_logs_group22`
* `It also back up the archived files to a remote server using SSH.`
* `After being moved the files should be securely backed up on a remote server.`

*Agertu/Elvin*

=======
Elvin : The backup username and host was done on my ssh where you'll find as you execute the backup.sh file and it was backing up on my /home directory with the name "heart_rate_log.txt_"
