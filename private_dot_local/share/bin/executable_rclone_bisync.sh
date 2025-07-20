#!/bin/bash

# Parameters
REMOTE="gdrive:00-KeePass"
LOCAL="$HOME/gdrive/00-KeePass"
LOGFILE="$HOME/.cache/rclone_bisync.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Simple connectivity test (ping Google DNS)
if ! ping -c 1 8.8.8.8 >/dev/null 2>&1; then
  echo "$TIMESTAMP - No network connection. Sync skipped." >>"$LOGFILE"
  exit 1
fi

# Run rclone bisync
rclone bisync "$REMOTE" "$LOCAL" --log-level ERROR --log-file "$LOGFILE"
