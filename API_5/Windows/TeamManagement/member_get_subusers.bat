@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/team/users

SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting the existing sub-users.

ECHO ON

curl -o member_get_subusers_RESPONSE.json -g -X GET -k "%base_url%%endpoint%?api_key=%apikey%&ofset=0&limit=100"

timeout /t 30