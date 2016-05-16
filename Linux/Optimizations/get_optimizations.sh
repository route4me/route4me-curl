#!/bin/bash

url=https://www.route4me.com/api.v4/optimization_problem.php
apikey=11111111111111111111111111111111
state=1,2,3
limit=10
offset=0

curl -o file1.txt -g -X GET -k "$url?state=$state&api_key=$apikey&limit=$limit&offset=$offset" 

echo "Finished..."

sleep 15
