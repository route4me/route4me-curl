@ECHO OFF

SET url=https://www.route4me.com/api.v4/user.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of changing a member's owner.

ECHO ON

curl -o member_edit_RESPONSE.json -g -X PUT -d "@change_member_owner_data.json" -k "%url%?api_key=%apikey%"

timeout /t 30