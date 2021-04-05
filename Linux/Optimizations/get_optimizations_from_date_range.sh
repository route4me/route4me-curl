#!/bin/bash

url=https://api.route4me.com/api.v4/optimization_problem.php
apikey=11111111111111111111111111111111
start_date="2019-10-15"
end_date="2019-10-20"

# The example refers to the process of getting the optimizations scheduled for the specified date range.

curl -o file1.txt -g -X GET -k "$url?state=$state&api_key=$apikey&start_date=$start_date&end_date=$end_date" 

echo "Finished..."

sleep 15
