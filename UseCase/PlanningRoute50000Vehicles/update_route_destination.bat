@ECHO OFF
SET url=https://api.route4me.com/api.v4/address.php

SET apikey=11111111111111111111111111111111
SET routeid=F2D359BE89F22D1C29324FF734916EBB
SET routedestinationid=188565964

ECHO ON

curl -o file1.txt -g -k -X PUT -H "Content-Type: application/json" -d "@update_route_destination_data.json" "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%"

timeout /t 30