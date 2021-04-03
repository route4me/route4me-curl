@ECHO OFF
SET url=https://www.route4me.com/api.v4/address.php
SET apikey=11111111111111111111111111111111
SET optprobid=93B630865F33E442FA94CF52251651D3
SET routedestinationid=184611047

ECHO ON

curl -o file1.txt -g -X DELETE -k "%url%?api_key=%apikey%&optimization_problem_id=%optprobid%&route_destination_id=%routedestinationid%"

timeout /t 30