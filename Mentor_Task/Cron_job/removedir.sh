#!/bin/bash

LOG="/home/prakash/Documents/bash/removedir.log"

rm -rf /home/prakash/Documents/build/*

echo "$(date)  Removing all the files under Build Directory" >> "$LOG"

