#!/bin/bash

url=https://api.route4me.com/api.v4/route.php
apikey=11111111111111111111111111111111
start_date="2019-08-01"
end_date="2019-08-05"

# The example refers to the process of getting the routes scheduled for the specified date range.

curl -o file1.txt -g -k -X GET "$url?api_key=$apikey&start_date=$start_date&end_date=$end_date" 

echo "Finished..."

sleep 15
