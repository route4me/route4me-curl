#!/bin/bash

url=https://www.route4me.com/api.v4/address.php
apikey=11111111111111111111111111111111
optprobid=123974C887534E84B6114F18A65847E3
routedestinationid=154456307

curl -o file1.txt -g -X DELETE -k "$url?api_key=$apikey&optimization_problem_id=$optprobid&route_destination_id=$routedestinationid"

echo "Finished..."

sleep 15
