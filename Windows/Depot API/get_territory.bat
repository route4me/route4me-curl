@ECHO OFF
SET url=https://apps.route4me.com/depots/territory/api/v1.0/territory/
SET apikey=11111111111111111111111111111111

SET page=1

ECHO ON

:: Examlple refers to cerating territory object with list of geographic names

curl -o file1.txt -k -g -X GET "%url%?api_key=%apikey%&page=%page%" 

timeout /t 30