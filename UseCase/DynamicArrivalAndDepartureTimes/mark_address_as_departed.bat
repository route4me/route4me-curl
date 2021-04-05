@ECHO OFF

SET url=https://api.route4me.com/api/route/mark_address_departed.php
SET apikey=11111111111111111111111111111111
SET routeid=241466F15515D67D3F951E2DA38DE76D
SET addressid=167899269
SET isdeparted=1
SET member=1

ECHO ON

:: is_departed=1 means address was departed, is_departed=0 --- not departed

curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%&route_id=%routeid%&address_id=%addressid%&is_departed=%isdeparted%&member_id=%member%"

timeout /t 30