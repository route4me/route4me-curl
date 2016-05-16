#!/bin/bash

url=https://www.route4me.com/datafeed/session/validate_session.php
apikey=11111111111111111111111111111111
sesid=4552222222
memid=787544566
frmt=json

curl -o file1.txt -g -X GET -k "$url?api_key=$apikey&session_guid=$sesid&member_id=$memid&$frmt=json"

echo "Finished..."

sleep 15
