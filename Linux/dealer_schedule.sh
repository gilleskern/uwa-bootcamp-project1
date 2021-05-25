#!/bin/bash

# Date & Time of roulette losses
# 0310 05:00:00 AM
# 0310 08:00:00 AM
# 0310 02:00:00 PM
# 0310 08:00:00 PM
# 0310 11:00:00 PM
# 0312 05:00:00 AM
# 0312 08:00:00 AM
# 0312 02:00:00 PM
# 0312 08:00:00 PM
# 0312 11:00:00 PM
# 0315 05:00:00 AM
# 0315 08:00:00 AM
# 0315 02:00:00 PM

#echo
#echo "March 10:"
awk '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep -i '05' | grep -i 'am'
awk '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep -i '08' | grep -i 'am'
awk '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep -i '02' | grep -i 'pm'
awk '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep -i '08' | grep -i 'pm'
awk '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep -i '11' | grep -i 'pm'

#echo
#echo "March 12:"
awk '{print $1, $2, $5, $6}' 0312_Dealer_schedule | grep -i '05' | grep -i 'am'
awk '{print $1, $2, $5, $6}' 0312_Dealer_schedule | grep -i '08' | grep -i 'am'
awk '{print $1, $2, $5, $6}' 0312_Dealer_schedule | grep -i '02' | grep -i 'pm'
awk '{print $1, $2, $5, $6}' 0312_Dealer_schedule | grep -i '08' | grep -i 'pm'
awk '{print $1, $2, $5, $6}' 0312_Dealer_schedule | grep -i '11' | grep -i 'pm'

#echo
#echo "March 15:"
awk '{print $1, $2, $5, $6}' 0315_Dealer_schedule | grep -i '05' | grep -i 'am'
awk '{print $1, $2, $5, $6}' 0315_Dealer_schedule | grep -i '08' | grep -i 'am'
awk '{print $1, $2, $5, $6}' 0315_Dealer_schedule | grep -i '02' | grep -i 'pm'
