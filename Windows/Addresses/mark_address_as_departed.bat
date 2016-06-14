@ECHO OFF
SET url=https://www.route4me.com/api/route/mark_address_departed.php
SET apikey=11111111111111111111111111111111
SET routeid=5C15E83A4BE005BCD1537955D28D51D7
SET addressid=160940135

ECHO ON

:: is_departed=1 means address was departed, is_departed=0 --- not departed

curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%&route_id=%routeid%&address_id=%addressid%&is_departed=1"

timeout /t 30