@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/team/users

SET apikey=11111111111111111111111111111111

:: The example refers to the process of creating new member by sending HTTP parameters.

ECHO ON

curl -o create_new_member_RESPONSE.json -g -k -X POST -d "@create_new_member_data.json" "%base_url%%endpoint%?api_key=%apikey%"

timeout /t 30