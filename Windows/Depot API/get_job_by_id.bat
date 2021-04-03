@ECHO OFF
SET url=https://apps.route4me.com/depots/api/v0.1/jobs/

SET apikey=11111111111111111111111111111111
SET pk=30

ECHO ON

:: Examlple refers to the process of getting a job by ID

curl -o file1.txt -k -g -X GET "%url%%pk%?api_key=%apikey%"

timeout /t 30