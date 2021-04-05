@ECHO OFF

SET url=https://api.route4me.com/api.v4/address.php
SET apikey=11111111111111111111111111111111
SET routeid=EDE99139F62A036E9651D4A2AD168E81
SET routedestinationid=178141206

ECHO ON

:: is_visited=1 means address was visited, is_visited=0 --- not visited

curl -o file1.txt -k -g -X PUT -H "Content-Type: application/json" -d "@mark_address_as_detected_as_visited_data.json" "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%"

timeout /t 30
