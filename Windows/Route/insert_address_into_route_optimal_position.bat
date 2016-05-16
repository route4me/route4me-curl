@ECHO OFF

SET url=http://www.route4me.com

:: You should insert real test data and your API key for accurate testing
SET apikey=11111111111111111111111111111111
SET routeid=5C15E83A4BE005BCD1537955D28D51D7

ECHO ON

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@insert_address_into_route_optimal_position_data.json" "%url%/api.v4/route.php?route_id=%routeid%&api_key=%apikey%"

timeout /t 30