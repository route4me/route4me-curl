#!/bin/bash

url=http://route4me.com/api.v4/route.php
apikey=33383266363136302D623934312D3131
rdirect=0
routeid=CEAA81617489EC7F8972372F6248946D

# The example demonstrates process of adding an order to the route by sending HTPP PUT data

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@add_order_to_route_data.json" "$url?api_key=$apikey&redirect=$rdirect&route_id=$routeid"

echo "Finished..."

sleep 15