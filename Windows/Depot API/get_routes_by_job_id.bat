@ECHO OFF
SET url=https://apps.route4me.com/depots/api/v0.1/routes/

SET apikey=11111111111111111111111111111111
SET pk=28

ECHO ON

:: Examlple refers to the process of getting the routes by sending job ID

curl -o file1.txt -k -g -X GET "%url%%pk%?api_key=%apikey%"

timeout /t 30