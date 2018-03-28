@ECHO OFF

SET url=https://api.route4me.com/api.v4/route.php
SET apikey=11111111111111111111111111111111
SET query=Tbilisi

:: The example refers to the process of searching for the specified text throughout all routes belonging to the user's account.

ECHO ON

curl -o file1.txt -g -k -X GET "%URL%?query=%query%&api_key=%apikey%" 

timeout /t 30