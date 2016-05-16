#!/bin/bash

url=http://www.route4me.com/api.v4/optimization_problem.php
apikey=11111111111111111111111111111111
opi=31AC533ECF9429CDECCECC530745F7BD

curl -o file1.txt -g -X POST -H "Content-Type: application/json" -d "@new_route_data.json" "$url?api_key=$apikey&optimization_problem_id=$opi"

echo "Finished..."

sleep 15
