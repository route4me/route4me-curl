@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111
SET optprobid=7EC3FC88737C29E93A54E88243ACBC77
SET routedestinationid=163752152

ECHO ON

curl -o file1.txt -g -X DELETE -k "%url%/api.v4/address.php?api_key=%apikey%&optimization_problem_id=%optprobid%&route_destination_id=%routedestinationid%"

timeout /t 30