#!/bin/bash

url=http://api.route4me.com/api.v4/optimization_problem.php
apikey=11111111111111111111111111111111
rdirect=0
optid=E0883C1A2C7B3AAA9397BDDF90C9CFF8

# The example demonstrates process of adding an order to the optimization by sending HTPP PUT data

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@add_order_to_route_data.json" "$url?api_key=$apikey&redirect=$rdirect&optimization_problem_id=$optid"

echo "Finished..."

sleep 15