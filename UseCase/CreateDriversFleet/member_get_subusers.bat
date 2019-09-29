@ECHO OFF

SET url=https://www.route4me.com/api.v4/user.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting the existing sub-users.

ECHO ON

curl -o member_get_subusers_RESPONSE.json -g -X GET -k "%URL%?api_key=%apikey%&ofset=0&limit=10"

timeout /t 30