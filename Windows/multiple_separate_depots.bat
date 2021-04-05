@ECHO OFF

:: The example refers to the process of creating an optimization using separate section of the depots in the route parameters.

SET url=https://api.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111

ECHO ON

curl -o multiple_separate_depots_RESPONSE.json -g -X POST -k -d "@multiple_separate_depots_data.json" "%url%?api_key=%apikey%" 

timeout /t 30