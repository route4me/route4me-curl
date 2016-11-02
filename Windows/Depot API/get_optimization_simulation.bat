@ECHO OFF
SET url=https://apps.route4me.com/depots/api/v0.1/job/view/

SET apikey=11111111111111111111111111111111
SET job_id=8275a7a0-f01c-4a6e-8477-93dd1e336ab5

ECHO ON

:: Examlple refers to the process of getting of optimization simulation

curl -o file1.txt -k -g -X GET "%url%%job_id%" 

timeout /t 30