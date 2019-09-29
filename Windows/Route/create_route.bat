@ECHO OFF

SET url=https://api.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: The example refers to the process of creating new route.

curl -o file1.txt -g -k -X POST -H "Content-Type: application/json" -d "@new_route_data.json" "%url%?api_key=%apikey%"

timeout /t 30