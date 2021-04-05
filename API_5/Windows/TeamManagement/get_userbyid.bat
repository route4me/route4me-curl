@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/team/users

SET user_id=7777777

SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting an existing team member.

ECHO ON

curl -o get_userbyid_RESPONSE.json -g -X GET -k "%base_url%%endpoint%/%user_id%?api_key=%apikey%"

timeout /t 30
