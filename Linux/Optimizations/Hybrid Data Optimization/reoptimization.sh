#!/bin/bash

url=https://www.route4me.com/api.v4/optimization_problem.php
apikey=11111111111111111111111111111111

optprobid=C1B821B94C5FFCE77001B3B2AA1B399C

# The example refers to the process of reoptimization an existing optimization.

curl -o file1.txt -g -X PUT -k -d "@reoptimization_data.json" "$url?api_key=$apikey&optimization_problem_id=$optprobid&reoptimize=1" 

echo "Finished..."

sleep 15
