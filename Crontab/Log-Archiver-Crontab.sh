#!/bin/bash

BASE_DIRECTORY="/home/username/Desktop/Side-Projects/Log-Archive-Tool"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M)

$BASE_DIRECTORY/log_archive_tool.sh $BASE_DIRECTORY/log_folder \
>> $BASE_DIRECTORY/cron_debug_logs/cron_debug_$TIMESTAMP.log 2>&1 \
| $BASE_DIRECTORY/email_log_tool.sh $TIMESTAMP \
>> $BASE_DIRECTORY/email_logs/email_send_$TIMESTAMP.log 2>&1