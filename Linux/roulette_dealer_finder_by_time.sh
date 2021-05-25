#!/bin/bash

# Format of the command
# sh roulette_dealer_finder_by_time.sh 0310 "11:00 am"

# Create variable from parameters
date=$1     # 4 digits US format (Month, Day)
fulltime=$2 # format of date is 00:00:00 (AM/PM)
time=$(echo "$fulltime" | awk '{print $1}')  # extract time from fulltime
period=$(echo "$fulltime" | awk '{print $2}')  # extract period (AM/PM) from fulltime

# Print dealer values
awk '{print $1, $2, $5, $6}' "$date"* | grep -i "$time" | grep -i "$period"

