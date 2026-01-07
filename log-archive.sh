#!/bin/bash

# Check if a directory argument was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <log-directory>"
  exit 1
fi

LOG_DIR="$1"

# Check if directory exists
if [ ! -d "$LOG_DIR" ]; then
  echo "Error: Directory does not exist."
  exit 1
fi

echo "Log directory set to: $LOG_DIR"

ARCHIVE_DIR="./archives"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"

mkdir -p "$ARCHIVE_DIR"

tar --ignore-failed-read --warning=no-file-ignored -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" "$LOG_DIR"

LOG_FILE="$ARCHIVE_DIR/archive.log"
echo "[$(date)] Created $ARCHIVE_NAME from $LOG_DIR" >> "$LOG_FILE"


