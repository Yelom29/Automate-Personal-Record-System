#!/bin/bash

# define the source file and backup directory
src_file="/path/to/personal/record/file.txt"
backup_dir="/path/to/backup/directory"

# create the backup directory if it doesn't exist
mkdir -p $backup_dir

# get the current date and time
now=$(date +"%Y-%m-%d_%H-%M-%S")

# create a backup file with the current date and time as the filename
backup_file="$backup_dir/backup_$now.txt"

# copy the source file to the backup file
cp $src_file $backup_file

# display a message to the user
echo "Backup created successfully: $backup_file"
