@ECHO OFF

:: You should insert real test data and your API key for accurate testing

SET url=https://www.route4me.com/api/get_activities.php
SET apikey=11111111111111111111111111111111
SET offset=0
SET limit=20
SET rid=D456A17625782787E85FEFA06F206DAC

ECHO ON
curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%&route_id=%rid%&offset=%offset%&limit=%limit%"

timeout /t 30