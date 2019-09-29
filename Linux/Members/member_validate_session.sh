#!/bin/bash

url=https://api.route4me.com/datafeed/session/validate_session.php
apikey=11111111111111111111111111111111
sesid=4552222222
memid=787544566
frmt=json

# The example refers to the process of validating an user's working session in the Route4Me application.

curl -o file1.txt -g -X GET -k "$url?api_key=$apikey&session_guid=$sesid&member_id=$memid&format=$frmt"

echo "Finished..."

sleep 15
