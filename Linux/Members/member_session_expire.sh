#!/bin/bash

url=https://www.route4me.com/datafeed/session/expire_session.php
apikey=11111111111111111111111111111111
sesid=4552222222
usid=787544566
frmt=json

curl -o file1.txt -g -X GET -k "$url?api_key=$apikey&session_guid=$sesid&user_id=$usid&format=$frmt"

echo "Finished..."

sleep 15
