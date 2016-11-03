@ECHO OFF
SET url=https://apps.route4me.com/depots/docs/

SET apikey=11111111111111111111111111111111

ECHO ON

:: Examlple refers to the process of getting documentation about Route4Me Depots Optimization API

curl -o file1.txt -k -g -X GET "%url%" 

timeout /t 30