#!/bin/bash

# Author: Priyanshu Singh
# Roll Number: 2601010126
# Script: Folder Backup

if [ -z "$1" ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: Folder does not exist."
    exit 1
fi

BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

tar -czf "$BACKUP_FILE" -C "$(dirname "$1")" "$(basename "$1")"

if [ $? -eq 0 ]; then
    SIZE=$(du -h "$BACKUP_FILE" | awk '{print $1}')
    echo "Backup created successfully!"
    echo "Backup file: $BACKUP_FILE"
    echo "Backup size: $SIZE"
    echo "$TIMESTAMP - SUCCESS - $BACKUP_FILE" >> "$BACKUP_DIR/backup.log"
else
    echo "Error: Backup failed."
    echo "$TIMESTAMP - FAILED" >> "$BACKUP_DIR/backup.log"
    exit 1
fi
