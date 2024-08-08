#!/usr/bin/bash

echo 'Removing all the files under Build Dir'

FOLDER="/home/prakash/Documents/workstation/"

echo 'Finding WorkSpace Folder'

LOG="/home/prakash/Documents/bash/workspace.log"

echo "$(date) - Running Cleanup " >> "$LOG"

find "$FOLDER" -type f -mmin +30 -exec rm {} \; >> "$LOG"
