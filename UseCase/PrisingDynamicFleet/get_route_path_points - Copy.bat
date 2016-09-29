@ECHO OFF

SET url=https://www.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET routeid=0AE877849C7F45A24B4D19BAC459895C
SET routeid1=1D866267B57AA9FC35D3B2797E14CD51
SET rpo=Points

ECHO ON

curl -o file1.txt -g -k -X GET "%url%?route_id=%routeid%&api_key=%apikey%&route_path_output=%rpo%"

START /WAIT curl -o file2.txt -g -k -X GET "%url%?route_id=%routeid1%&api_key=%apikey%&route_path_output=%rpo%"

timeout /t 30