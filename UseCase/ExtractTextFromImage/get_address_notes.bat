@ECHO OFF

SET url=https://api.route4me.com/api.v4/address.php
SET apikey=11111111111111111111111111111111
SET routeid=D68AAF9C015D8AA4A138583453CE90EB
SET routedestinationid=196429351

ECHO ON
curl -o file1.txt -g -k -X GET "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%&notes=1"

timeout /t 30