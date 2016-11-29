#!/bin/bash

url="https://www.route4me.com/api.v4/optimization_problem.php"
apikey=11111111111111111111111111111111
optprobid=07372F2CF3814EC6DFFAFE92E22771AA
opt=1

# The example refers to the process of adding an addres to an optimization.
# You should insert real test data and your API key for accurate testing.

curl -o file1.txt -g -X PUT -k -d "@address_for_optimization.json" "$url?api_key=$apikey&optimization_problem_id=$optprobid&reoptimize=$opt" 

echo "Finished..."

sleep 15
