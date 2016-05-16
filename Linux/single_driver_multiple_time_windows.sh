#!/bin/bash

# Single Driver Multiple TimeWindows 12 Stops
# Please put real value in route_date

# See video tutorial here: http://support.route4me.com/route-planning-help.php?id=manual0:tutorial2:chapter1:subchapter2

url=https://www.route4me.com/api.v4/optimization_problem.php
apikey=11111111111111111111111111111111

curl -o file1.txt -g -X POST -k -d "@single_driver_multiple_time_windows_data.json" "$url?api_key=$apikey" 

echo "Finished..."

sleep 15
