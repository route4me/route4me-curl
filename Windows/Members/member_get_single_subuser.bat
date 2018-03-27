@ECHO OFF

SET url=https://api.route4me.com/api.v4/user.php
SET apikey=11111111111111111111111111111111
SET member_id=45844

:: The example refers to the process of getting an existing sub-user.

ECHO ON

curl -o file1.txt -g -X GET -k "%url%?api_key=%apikey%&member_id=%member_id%"

timeout /t 30