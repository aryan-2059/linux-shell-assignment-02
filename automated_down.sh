#script that downloads a file from internet using wget or curl and stores it in a predefined directory
#!/bin/bash
#Author: Aryan Solanki
# Define URL to download from
URL="https://filesamples.com/samples/document/txt/sample3.txt"

# Define download directory
DOWNLOAD_DIR="C:\Users\Aryan\Documents\College\CSF\Assignments"

# Create download directory if it doesn't exist
mkdir -p "$DOWNLOAD_DIR"
# Define output file path
OUTPUT_FILE="$DOWNLOAD_DIR/$(basename $URL)"
# Download the file using wget or curl
if command -v wget &> /dev/null
then
    wget -O "$OUTPUT_FILE" "$URL"
elif command -v curl &> /dev/null
then
    curl -o "$OUTPUT_FILE" "$URL"
else
    echo "Neither wget nor curl is installed. Please install one of them to proceed."
    exit 1
fi
# Log completion message
echo "File downloaded from $URL to $OUTPUT_FILE"
# End of script
