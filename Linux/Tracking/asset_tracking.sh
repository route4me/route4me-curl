#!/bin/bash

# asset_id is not real value in query parameter - put real value

url=https://www.route4me.com/api/asset/find_route.php
apikey=11111111111111111111111111111111
query=2121541

curl -o file1.txt -g -X GET -k "$url?api_key=$apikey&query=$query"

echo "Finished..."

sleep 15
