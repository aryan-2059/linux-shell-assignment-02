# script that copies a specified directory to a backup location
#!/bin/bash
#Author: Aryan Solanki

# Define source and backup directories
SOURCE_DIR="C:\Users\Aryan\Documents\College\CSF\Assignments"
BACKUP_DIR="C:\Users\Aryan\Documents\College\CSF\Assignments\backup_dir" 

# Create a timestamped backup
DATE=$(date +"%Y%m%d_%H%M%S")

# Create backup directory if it doesn't exist
BACKUP_PATH="$BACKUP_DIR/backup_$DATE"

mkdir -p "$BACKUP_PATH"
# Copy files from source to backup directory
cp -r "$SOURCE_DIR/"* "$BACKUP_PATH/"

# Log completion message
echo "Backup of $SOURCE_DIR completed at $BACKUP_PATH"
# End of script