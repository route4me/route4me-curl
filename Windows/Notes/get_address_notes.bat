@ECHO OFF
:: route_id and route_destination_id are not real - put real values
SET url=https://www.route4me.com/api.v4/address.php
SET apikey=11111111111111111111111111111111
SET routeid=kllk645lkl6kllk6l5k6l5k6l5k6
SET routedestinationid=545464355

ECHO ON
curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%&notes=1"

timeout /t 30