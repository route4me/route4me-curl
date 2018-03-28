#!/bin/bash

url=http://api.route4me.com/api.v4/address.php
apikey=11111111111111111111111111111111
optimization_problem_id=F678E11289BBEA44D5BEC41BB22B3FB4
route_destination_id=174785125
route_id=88A1F9E7DAD77698F2A1C54E3FDCA7CF

# The example refers to the process of getting an address from an optimization.

curl -o file1.txt -g -X GET "$url?api_key=$apikey&optimization_problem_id=$optimization_problem_id&route_id=$route_id&route_destination_id=$route_destination_id"

echo "Finished..."

sleep 15
