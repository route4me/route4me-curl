@ECHO OFF

SET url=https://api.route4me.com/api.v4/user.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting the existing sub-users.

ECHO ON

curl -o file1.txt -g -X GET -k "%URL%?api_key=%apikey%"

timeout /t 30