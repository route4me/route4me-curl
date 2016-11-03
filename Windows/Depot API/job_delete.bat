@ECHO OFF
SET url=https://apps.route4me.com/depots/api/v0.1/jobs/

SET apikey=11111111111111111111111111111111
SET pk=29

ECHO ON

:: Examlple refers to the process of getting of optimization simulation

curl -o file1.txt -k -g -X DELETE "%url%%pk%"

timeout /t 30