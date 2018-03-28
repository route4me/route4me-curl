#!/bin/bash

url=https://api.route4me.com/api.v4/hybrid_date_optimization.php
apikey=11111111111111111111111111111111

scheduled_data="2017-02-24"
tz_minutes=480

# The example refers to the process of getting a hybrid optimization for scheduled date.
# You can reoptimize retrieved optimization.
# Read Links:
# http://support.route4me.com/route-planning-help.php?id=manual11:tutorial2:chapter7
# http://support.route4me.com/route-planning-help.php?id=manual11:tutorial3:chapter12


curl -o file1.txt -g -k -X GET "$url?api_key=$apikey&target_date_string=$scheduled_data&timezone_offset_minutes=$tz_minutes" 

echo "Finished..."

sleep 15
