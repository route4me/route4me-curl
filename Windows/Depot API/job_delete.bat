@ECHO OFF
SET url=https://apps.route4me.com/depots/api/v0.1/jobs/

SET apikey=11111111111111111111111111111111
SET pk=31

ECHO ON

:: Examlple refers to the process of deleting a job

curl -o file1.txt -k -g -X DELETE "%url%%pk%?api_key=%apikey%"

timeout /t 30