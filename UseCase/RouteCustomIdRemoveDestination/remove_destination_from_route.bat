@ECHO OFF
SET url=https://www.route4me.com/api.v4/address.php
SET apikey=11111111111111111111111111111111
SET routeid=9F019B4481C6566F7E338136DAC0B89E
SET routedestinationid=184536231

ECHO ON

curl -o file1.txt -g -X DELETE -k "%url%?api_key=%apikey%&route_id=%torouteid%&route_destination_id=%routedestinationid%"

timeout /t 30