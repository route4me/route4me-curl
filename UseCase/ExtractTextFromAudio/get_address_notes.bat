@ECHO OFF

SET url=https://www.route4me.com/api.v4/address.php
SET apikey=11111111111111111111111111111111
SET routeid=7FE9E1F17371A76869EB808C1CB619AB
SET routedestinationid=196888777

ECHO ON
curl -o file1.txt -g -k -X GET "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%&notes=1"

timeout /t 30