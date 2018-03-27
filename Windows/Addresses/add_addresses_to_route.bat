@ECHO OFF

SET url=http://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=26312274727B95E07BEC2711449C458A

:: The example refers to the process of adding an address to a route.
:: You should insert real test data and your API key for accurate testing.

ECHO ON

curl -o file1.txt -g -X PUT -H "Content-Type: application/json" -d "@route_add_addresses_data.json" "%url%?route_id=%routeid%&api_key=%apikey%"

timeout /t 30