@ECHO OFF

SET url=https://api.route4me.com/api.v4/configuration-settings.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: Example refers to the process of new account configuration key creation.

curl -o file1.txt -k -g -X POST -H "Content-Type: application/json;" -d "@add_new_account_config_value_data2.json" "%url%?api_key=%apikey%" 

timeout /t 30