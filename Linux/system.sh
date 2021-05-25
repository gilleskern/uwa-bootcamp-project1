#!/bin/bash

# INSTRUCTIONS: Edit the following placeholder command and output filepaths
# For example: cpu_usage_tool > ~/backups/cpuuse/cpu_usage.txt
# The cpu_usage_tool is the command and ~/backups/cpuuse/cpu_usage.txt is the filepath
# In the above example, the `cpu_usage_tool` command will output CPU usage information into a `cpu_usage.txt` file.
# Do not forget to use the -h option for free memory, disk usage, and free disk space

# Free memory output to a free_mem.txt file
# Use the 'free -h' command to get the currently available memory
# https://unix.stackexchange.com/questions/168021/print-total-free-memory-from-free-m
(echo -n "available memory: " && free -h | awk 'NR==2{print $7}') | tee ~/backups/freemem/free_mem.txt # save available memory

# Disk usage output to a disk_usage.txt file
# Use 'df -h /' command to get the available disk space
# https://www.linux.com/training-tutorials/linux-101-check-disk-space-command/
(echo -n "disk usage: " && du -h / | awk 'NR==2{print $5}') | tee ~/backups/diskuse/disk_usage.txt # save disk usage

# List open files to a open_list.txt file
# Use 'lsof' command to list all open files
# https://alvinalexander.com/blog/post/linux-unix/linux-lsof-command/
openlist=~/backups/openlist/open_list.txt
echo -n "number of open files: " && lsof > $openlist && tail -n +2 $openlist | wc -l

# Free disk space to a free_disk.txt file
# Use 'df -h' command to print file system disk space statistics
freedisk=~/backups/freedisk/free_disk.txt
echo -n "number of disks: " && df -h > $freedisk && tail -n +2 $freedisk | wc -l