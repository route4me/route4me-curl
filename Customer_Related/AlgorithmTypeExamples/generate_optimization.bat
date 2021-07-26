@ECHO OFF

SET url=https://api.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111171111111111111111111

ECHO ON

curl -o output_data.json -g -X POST -k -d "@input_data.json" "%url%?api_key=%apikey%" 


timeout /t 30