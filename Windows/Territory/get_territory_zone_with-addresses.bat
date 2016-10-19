@ECHO OFF

SET url=https://www.route4me.com/api.v4/territory.php
SET apikey=11111111111111111111111111111111
SET terid=596A2A44FE9FB19EEB9C3C072BF2D0BE
SET addresses=1

ECHO ON

:: This example refers to the process of getting Territory zone with enclosed addresses.

curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%&territory_id=%terid%&addresses=%addresses%"

timeout /t 30