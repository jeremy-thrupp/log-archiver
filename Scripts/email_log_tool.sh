#!/bin/bash

cron_debug_log_folder="/home/jeremy/Desktop/Side-Projects/Log-Archive-Tool/cron_debug_logs"
log_file_prefix=$1.log
to_email_address=fakeemailaddress@gmail.com

if [ -d $cron_debug_log_folder ]; then
    echo "Cron debug log folder exists"
    
    current_log_file="$cron_debug_log_folder/cron_debug_$log_file_prefix"
    
    if [[ -n "$current_log_file/" ]]; then
        log_file_contents=$(cat "$current_log_file")
        
        output=$( (
                echo "Subject: Log Report: $log_file_prefix"
                echo "To: $to_email_address"
                echo ""
                cat "$current_log_file"
        ) | msmtp "$to_email_address" 2>&1 )
        
        if [ $? -eq 0 ]; then
            echo "Email sent successfully."
            echo "Details: $output"
        else
            echo "Error: Email failed to send."
            echo "Details: $output"
        fi
    fi
    
else
    echo "Error: No cron debug log folder exists"
    exit 1
fi