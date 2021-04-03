@ECHO OFF

SET url=https://route4me.com/api.v4/status.php
SET apikey=11111111111111111111111111111111
SET tracking="Q7G9P1L9"

ECHO ON

:: Example refers to the process of getting asset tracking data by sending HTTP GET parameters.

curl -o file1.txt -g -X GET -k "%url%?api_key=%apikey%&tracking=%tracking%"

timeout /t 30