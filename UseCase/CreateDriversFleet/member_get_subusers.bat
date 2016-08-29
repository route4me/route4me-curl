@ECHO OFF
SET url=https://www.route4me.com/api/member/view_users.php
SET apikey=11111111111111111111111111111111

:: View existing sub-users in a Member's account

ECHO ON

curl -o file1.txt -g -X GET -k "%URL%?api_key=%apikey%"

timeout /t 30