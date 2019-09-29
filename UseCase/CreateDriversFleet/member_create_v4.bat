@ECHO OFF

SET url=https://route4me.com/api.v4/user.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of creating a sub-user in a member's account

ECHO ON

curl -o member_create_v4_RESPONSE.json -g -H "Content-Type: application/json" -X POST -k -d "@member_create_v4_data.json" "%url%?api_key=%apikey%"

timeout /t 30