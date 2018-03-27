@ECHO OFF

SET url=https://api.route4me.com/api.v4/address.php
SET apikey=11111111111111111111111111111111
SET optimization_problem_id=F678E11289BBEA44D5BEC41BB22B3FB4
SET route_destination_id=174785125
SET route_id=88A1F9E7DAD77698F2A1C54E3FDCA7CF

:: The example refers to the process of getting an address from an optimization.

ECHO ON
curl -o file1.txt -g -k -X GET "%URL%?api_key=%apikey%&optimization_problem_id=%optimization_problem_id%&route_destination_id=%route_destination_id%&route_id=%route_id%"

timeout /t 30