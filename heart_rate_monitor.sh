#!/bin/bash

# Ask user for the device name
echo "Input name of device (e.g., Monitor_A):"
read device_name

# Text file where heart rate data will be logged
log_file="heart_rate_log.txt"

# Start logging heart rate data

while true; do
	 # Get current timestamp
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')

# generate a random heart rate between 50 and 100
    heart_rate=$((RANDOM % 51 + 40))


    # Add the data to the log file
    echo "$timestamp $device_name $heart_rate" >> $log_file

    # 1 second sleep
    sleep 1
done
