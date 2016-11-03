@ECHO OFF
SET url=https://apps.route4me.com/depots/api/v0.1/job/download/

SET apikey=11111111111111111111111111111111
SET job_id=6bcd0373-c72c-42f1-81d7-a36c48983e16

ECHO ON

:: Examlple refers to the process of a job download

curl -o file1.txt -k -g -X GET "%url%%job_id%" 

timeout /t 30