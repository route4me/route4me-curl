#!/bin/bash

url=https://api.route4me.com/api.v4/optimization_problem.php
apikey=11111111111111111111111111111111

optprobid=C86B7F391E6A08187FEA0D623B48DA32

# The example refers to the process of reoptimization an existing optimization.

curl -o file1.txt -g -X PUT -k "$url?api_key=$apikey&optimization_problem_id=$optprobid&reoptimize=1" 

echo "Finished..."

sleep 15
