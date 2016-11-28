@ECHO OFF

SET url=https://www.route4me.com/api.v4/user.php
SET apikey=11111111111111111111111111111111

:: Edit existing sub-users in a Member's account

ECHO ON

curl -o file1.txt -g -X PUT -d "@member_edit_data.json" -k "%url%?api_key=%apikey%"

timeout /t 30