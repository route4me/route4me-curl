@ECHO OFF

SET url=https://www.route4me.com/api.v4/user.php
SET apikey=11111111111111111111111111111111
SET member_id=45844

:: View existing sub-users in a Member's account

ECHO ON

curl -o file1.txt -g -X GET -k "%url%?api_key=%apikey%&member_id=%member_id%"

timeout /t 30