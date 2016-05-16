@ECHO OFF
SET url=http://www.route4me.com

:: You should insert real test data and your API key for accurate testing
SET apikey=11111111111111111111111111111111
SET routeid=5C15E83A4BE005BCD1537955D28D51D7
SET routedestinationid=160940135

ECHO ON

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@update_route_destination_custom_data.json" "%url%/api.v4/address.php?api_key=%apikey%&route_id=%routeid%&route_destination_id=%routedestinationid%"

timeout /t 30