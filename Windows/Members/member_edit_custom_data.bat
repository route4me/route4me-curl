@ECHO OFF

SET url=https://api.route4me.com/api.v4/user.php
SET apikey=11111111111111111111111111111111

:: The example refers to the process of adding/editing custom data to an existing user account.

ECHO ON

curl -o member_edit_custom_data_RESPONSE.json -g -X PUT -d "@member_edit_custom_data_data.json" -k "%url%?api_key=%apikey%"

timeout /t 30