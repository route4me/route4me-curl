@ECHO OFF

SET url=https://api.route4me.com/api/route/mark_address_departed.php
SET apikey=11111111111111111111111111111111
SET routeid=DD376C7148E7FEE36CFABE2BD9978BDD
SET addressid=183045808
SET isdeparted=1
SET member=1

ECHO ON

:: The example refers to the process of marking an address as departed.
:: is_departed=1 means address was marked as departed.

curl -o file1.txt -g -k -X PUT "%URL%?api_key=%apikey%&route_id=%routeid%&address_id=%addressid%&is_departed=%isdeparted%&member_id=%member%"

timeout /t 30