@ECHO OFF

SET url=https://api.route4me.com/actions/address/update_address_visited.php
SET apikey=11111111111111111111111111111111
SET routeid=241466F15515D67D3F951E2DA38DE76D
SET addressid=167899269
SET isvisited=1
SET member=1

ECHO ON

:: is_visited=1 means address visited, is_visited=0 --- not visited

curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%&route_id=%routeid%&address_id=%addressid%&is_visited=%isvisited%&member_id=%member%"

timeout /t 30