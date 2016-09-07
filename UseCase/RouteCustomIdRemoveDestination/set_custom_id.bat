@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=9F019B4481C6566F7E338136DAC0B89E

ECHO ON

curl -o file1.txt -g -k -X PUT -H "Content-Type: application/json" -d "@set_custom_id_data.json" "%url%?api_key=%apikey%&route_id=%routeid%"

timeout /t 30
