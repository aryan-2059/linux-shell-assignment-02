#Script that logs CPU memory usage to a file at regular intervals
#!/bin/bash
#Author: Aryan Solanki


# Define log file location
LOG_FILE="C:\Users\Aryan\Documents\College\CSF\Assignments\sys_monitor_log.txt"
# Define monitoring interval in seconds
INTERVAL=60
# Define maximum monitoring duration in seconds
MAX_DURATION=3600
# Initialize elapsed time
ELAPSED_TIME=0
# Start monitoring loop
while [ $ELAPSED_TIME -lt $MAX_DURATION ]; do
    # Get current timestamp
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
    # Get CPU usage
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    # Get Memory usage
    MEM_USAGE=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2 }')
    # Log the CPU and Memory usage to the log file
    echo "$TIMESTAMP - CPU Usage: $CPU_USAGE% - Memory Usage: $MEM_USAGE%" >> "$LOG_FILE"
    # Wait for the defined interval
    sleep $INTERVAL
    # Increment elapsed time
    ELAPSED_TIME=$((ELAPSED_TIME + INTERVAL))
done
# Log completion message
echo "System monitoring completed. Log saved to $LOG_FILE"
# End of script