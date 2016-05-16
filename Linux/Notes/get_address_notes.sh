#!/bin/bash

# route_id and route_destination_id are not real - put real values

url=https://www.route4me.com/api.v4/address.php
apikey=11111111111111111111111111111111
routeid=kllk645lkl6kllk6l5k6l5k6l5k6
routedestinationid=545464355

curl -o file1.txt -g -k -X GET "$url?api_key=$apikey&route_id=$routeid&route_destination_id=$routedestinationid&notes=1"

echo "Finished..."

sleep 15
