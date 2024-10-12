#!/bin/bash

# Ask user for the device name
echo "Input name of device (e.g., Monitor_A):"
read device_name

# Text file where heart rate data will be logged
log_file="heart_rate_log.txt"

# Function to generate a random heart rate between 50 and 100
generate_heart_rate() {
    echo $(( RANDOM % 51 + 50 ))
}

# Function to handle termination signal
cleanup() {
    echo "Stopping heart rate monitoring..."
    kill "$pid"
    exit
}

# Trap SIGINT (Ctrl+C) to clean up
trap cleanup SIGINT

# Start logging in the background
{
    while true; do
        # Getting current timestamp
        timestamp=$(date '+%Y-%m-%d %H:%M:%S')
        
        # Generate a simulated heart rate
        heart_rate=$(generate_heart_rate)
        
        # Log the data to the file
        echo "$timestamp $device_name $heart_rate" >> "$log_file"
        
        # Sleep for 1 second
        sleep 1
    done
} &

# Capture the process ID (PID) of the background process
pid=$!

# Display the PID for management
echo "Heart rate monitoring started with PID: $pid"
