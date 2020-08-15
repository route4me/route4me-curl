@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/member-configuration-settings

SET apikey=bd48828717021141485a701453273458

:: The example refers to the process of getting all account configuration key data

ECHO ON

curl -o get_config_settings_RESPONSE.json -g -X GET -k "%base_url%%endpoint%?api_key=%apikey%"

timeout /t 30