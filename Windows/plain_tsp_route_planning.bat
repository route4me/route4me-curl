@ECHO OFF
SET URL=https://www.route4me.com//api.v4/optimization_problem.php
SET API_KEY=11111111111111111111111111111111

ECHO ON

curl -o file1.txt -g -k -X POST -d "@addresses4.json" "%URL%?api_key=%API_KEY%"