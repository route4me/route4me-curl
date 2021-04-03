@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/team/users

SET user_id=55555

SET apikey=11111111111111111111111111111111

:: The example refers to the process of updating an existing team member.

ECHO ON

curl -o update_user_RESPONSE.json -g -k -X PATCH -H "accept: application/json" -H "Content-Type: application/json" -d "@update_user_data.json" "%base_url%%endpoint%/%user_id%?api_key=%apikey%"

timeout /t 30