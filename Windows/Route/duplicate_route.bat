@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111
SET routeid=C963990B11B6E3BB0648C0195E683EF0

ECHO ON
curl -o file1.txt -g -k -X GET "%URL%/actions/duplicate_route.php?api_key=%apikey%&route_id=%routeid%&to=none" 

timeout /t 30