@ECHO OFF

SET url=https://api.route4me.com/api.v4/configuration-settings.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: Example refers to the process of removing of a specified configuration key belonging to an account.

curl -o file1.txt -k -g -X DELETE -H "Content-Type: application/json;" -d "@delete_existing_config_key_data.json" "%url%?api_key=%apikey%" 

timeout /t 30