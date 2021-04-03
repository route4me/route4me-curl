@ECHO OFF

SET url=https://www.route4me.com/api.v4/address.php
SET apikey=11111111111111111111111111111111
SET routeid=EDE99139F62A036E9651D4A2AD168E81
SET routedestinationid=178141214

ECHO ON
curl -o file1.txt -g -k -X GET "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%&notes=1"

timeout /t 30