@ECHO OFF

:: The example refers to the process of pickup and dropoff route planning.

SET URL=https://api.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111

ECHO ON

curl -o mdmd_pickup_dropoff_RESPONSE.json -g -X POST -k -d "@mdmd_pickup_dropoff_data.json" "%URL%?api_key=%apikey%" 

timeout /t 30