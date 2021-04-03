@ECHO OFF

SET url=https://www.route4me.com/api.v4/territory.php
SET apikey=11111111111111111111111111111111
SET terid=B0749C40E541523500F97D87D73C762C
SET addresses=1

ECHO ON
curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%&territory_id=%terid%&addresses=%addresses%&fields=address_id,alias"

timeout /t 30