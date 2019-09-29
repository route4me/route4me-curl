#!/bin/bash

url=https://api.route4me.com/api.v4/address.php
apikey=11111111111111111111111111111111
routeid=kllk645lkl6kllk6l5k6l5k6l5k6
routedestinationid=545464355

# The example refers to the process of getting the notes attached to an address of a route.
# You should insert real test data and your API key for accurate testing

curl -o file1.txt -g -k -X GET "$url?api_key=$apikey&route_id=$routeid&route_destination_id=$routedestinationid&notes=1"

echo "Finished..."

sleep 15
