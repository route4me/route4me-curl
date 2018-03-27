@ECHO OFF

SET url=https://api.route4me.com/api.v4/address.php
SET apikey=11111111111111111111111111111111
SET optprobid=692C7776603BB4858900E0D000CA102A
SET routedestinationid=175374836

:: The example refers to the process of removing an address from an optimization.

ECHO ON

curl -o file1.txt -g -X DELETE -k "%url%?api_key=%apikey%&optimization_problem_id=%optprobid%&route_destination_id=%routedestinationid%"

timeout /t 30