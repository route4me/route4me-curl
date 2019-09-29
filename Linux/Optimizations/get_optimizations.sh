#!/bin/bash

url=https://api.route4me.com/api.v4/optimization_problem.php
apikey=11111111111111111111111111111111
state=1,2,3
limit=10
offset=0

# The example refers to the process of getting the limited number of the optimization problems.

curl -o file1.txt -g -X GET -k "$url?state=$state&api_key=$apikey&limit=$limit&offset=$offset" 

echo "Finished..."

sleep 15
