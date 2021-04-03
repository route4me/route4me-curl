@ECHO OFF
SET url=https://apps.route4me.com/depots/api/v0.1/channel/

SET apikey=11111111111111111111111111111111

ECHO ON

:: Examlple refers to the process of getting a channel

curl -o file1.txt -k -g -X GET "%url%" 

timeout /t 30