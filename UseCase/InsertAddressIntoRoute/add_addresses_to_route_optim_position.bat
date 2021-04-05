@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=5F9F4AE9FA82B3AFABB531E94EFAE19D

ECHO ON

curl -o file1.txt -k -g -X PUT -H "Content-Type: application/json" -d "@add_addresses_to_route_optim_position_data.json" "%url%?route_id=%routeid%&api_key=%apikey%"

timeout /t 30


