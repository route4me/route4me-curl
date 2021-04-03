@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/team/users

SET user_id=7777777

SET apikey=11111111111111111111111111111111

:: The example refers to the process of remove a member from the team.

ECHO ON

curl -o delete_user_RESPONSE.json -g -k -X DELETE -H "accept: application/json" "%base_url%%endpoint%/%user_id%?api_key=%apikey%"

timeout /t 30
