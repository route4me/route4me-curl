@ECHO OFF

SET url=https://api.route4me.com/api.v4/territory.php
SET apikey=11111111111111111111111111111111
SET terid1=39236C3A30F92CA338C41EB0978F9D8A

ECHO ON

:: The example refers to the process of updating a territory zone by sending HTTP parameters.

curl -o file1.txt -g -k -X PUT -d "@update_circle_zone_data.json" "%url%?api_key=%apikey%&territory_id=%terid1%"

timeout /t 30