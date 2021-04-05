@ECHO OFF
SET url=https://api.route4me.com/api.v4/address.php

:: You should insert real test data and your API key for accurate testing

SET apikey=11111111111111111111111111111111
SET routeid=27AF2455563AAB57650CE5696FBEC199
SET routedestinationid=208797874

ECHO ON

curl -o file1.txt -g -k -X PUT -H "Content-Type: application/json" -d "@update_address_custom_data.json" "%url%?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%"

timeout /t 30