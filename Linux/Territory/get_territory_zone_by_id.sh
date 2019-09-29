#!/bin/bash

url=https://api.route4me.com/api.v4/territory.php
apikey=11111111111111111111111111111111
terid=02ACC3A8A552A5F2F0C09E6839DBB761

# The example refers to the process of getting a territory zone by sending HTTP parameters.

curl -o file1.txt -g -k -X GET "$url?api_key=$apikey&territory_id=$terid"

echo "Finished..."

sleep 15
