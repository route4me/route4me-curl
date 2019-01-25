@ECHO OFF

SET url=https://route4me.com/api.v4/configuration-settings.php
SET apikey=11111111111111111111111111111111

ECHO ON

:: Example refers to the process of adding array of the new account configuration keys.

curl -o add_array_of_account_config_values_RESPONSE.json -k -g -X POST -H "Content-Type: application/json;" -d "@add_array_of_account_config_values_data.json" "%url%?api_key=%apikey%" 

timeout /t 30