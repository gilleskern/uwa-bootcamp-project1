#!/bin/bash

# Format of the command
# sh roulette_dealer_finder_by_time.sh 0310 "11:00 am" "roulette"

# Create variable from parameters
date=$1     # 4 digits US format (Month, Day)
fulltime=$2 # format of date is 00:00:00 (AM/PM)
time=$(echo "$fulltime" | awk '{print $1}')  # extract time from fulltime
period=$(echo "$fulltime" | awk '{print $2}')  # extract period (AM/PM) from fulltime
game=$3     # name of the game (BlackJack/Roulette/Texas)

# Print dealer values
if [ "$game" = "blackjack" ];
then
    awk '{print $1, $2, $3, $4}' "$date"* | grep -i "$time" | grep -i "$period"
elif [ "$game" = "roulette" ]; 
then
    awk '{print $1, $2, $5, $6}' "$date"* | grep -i "$time" | grep -i "$period"
elif [ "$game" = "texas" ];
then
    awk '{print $1, $2, $7, $8}' "$date"* | grep -i "$time" | grep -i "$period"
fi



