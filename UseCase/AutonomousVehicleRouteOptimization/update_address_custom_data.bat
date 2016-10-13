@ECHO OFF
SET url=https://www.route4me.com/api.v4/address.php

:: You should insert real test data and your API key for accurate testing

SET apikey=11111111111111111111111111111111
SET routeid=27EB5DF5960A906AEE1FBA09AB55C897
SET routedestinationid=192168006

ECHO ON

curl -o file1.txt -g -k -X PUT -H "Content-Type: application/json" -d "@update_address_custom_data.json" "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%"

timeout /t 30