@ECHO OFF

SET url=https://api.route4me.com/api/member/capabilities.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting the user capabilities.

ECHO ON

curl -o member_get_capabilities_RESPONSE.json -g -X GET -k "%url%?api_key=%apikey%"

timeout /t 30