#!/bin/bash

url="https://www.route4me.com/api.v4/optimization_problem.php"
apikey=11111111111111111111111111111111
optprobid=07372F2CF3814EC6DFFAFE92E22771AA
opt=0

# Worning - data in json file isn't real, you should put there real test data for right testing

curl -o file1.txt -g -X PUT -k -d "@address_for_optimization.json" "$url?api_key=$apikey&optimization_problem_id=$optprobid&reoptimize=$opt" 

echo "Finished..."

sleep 15
