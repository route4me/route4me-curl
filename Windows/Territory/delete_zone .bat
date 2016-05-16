@ECHO OFF
SET url=https://www.route4me.com/api.v4/territory.php
SET apikey=11111111111111111111111111111111
SET terid1=083F0E34A2271FCAFA5476A364F32B4E

ECHO ON

curl -o file1.txt -g -k -X DELETE "%url%?api_key=%apikey%&territory_id=%terid1%"

timeout /t 30