#!/bin/bash

# this program is to execute delelte old logs files

# first we have to create a folder
APP_FOLDER=/tmp/folder-logs
LOG_DIR=/tmp/app-logs
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOG_FILE=$LOG_DIR-$SCRIPT_NAME-$DATE.log

  FILES_TO_DELETE=$(find $APP_FOLDER -name "*.log" -type f  -mtime +14 )

  echo "scrit starting at $DATE"

  while read line
do
    echo "deleting $line" &>>$LOG_FILE
    rm -rf $line
done <<< $FILES_TO_DELETE















