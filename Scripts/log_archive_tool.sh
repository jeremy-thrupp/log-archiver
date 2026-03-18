#!/bin/bash
log_directory=$1
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
file_name="logs_archive_$timestamp"
backup_dir="/home/jeremy/Desktop/Side-Projects/Log-Archive-Tool/archives"

echo "The Log Directory you have supplied is: $log_directory"

if [ ! -d "$backup_dir" ]; then
    mkdir $backup_dir
    echo "Created directory - $backup_dir"
fi

if [ -z $log_directory ]; then
    echo "Please supply the path to the log folder"
    exit 1
fi

if [ -d $log_directory ]; then
    echo "Valid log folder supplied"
    echo "Compressing logs"
    tar -cvf "$backup_dir/$file_name".tar $log_directory
else
    echo "Please ensure that the path to the log folder exists"
fi