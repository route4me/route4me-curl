@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111

ECHO ON
curl -o file1.txt -g -X GET -k "%URL%/api.v4/optimization_problem.php?state=1,2,3&api_key=%apikey%&limit=10&offset=0" 

timeout /t 30