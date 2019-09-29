#!/bin/bash

url=https://api.route4me.com/api.v4/optimization_problem.php
apikey=11111111111111111111111111111111
optprobid=07372F2CF3814EC6DFFAFE92E22771AA

# The example refers to the process of reoptimization an existing optimization.

curl -o file1.txt -g -X PUT -k -d "@addresses_for_reoptimization.json" "$url?api_key=$apikey&optimization_problem_id=$optprobid&reoptimize=1" 

echo "Finished.."

sleep 15
