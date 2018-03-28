@ECHO OFF

SET url=https://api.route4me.com/api.v4/territory.php
SET apikey=11111111111111111111111111111111
SET terid=596A2A44FE9FB19EEB9C3C072BF2D0BE
SET addresses=1

ECHO ON

:: The example refers to the process of getting Territory zone with covered addresses.

curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%&territory_id=%terid%&addresses=%addresses%"

timeout /t 30