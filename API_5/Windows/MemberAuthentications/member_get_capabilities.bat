@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/auth-history/apiconf

SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting the user capabilities.

ECHO ON

curl -o member_get_capabilities_RESPONSE.json -g -X GET -k "%base_url%%endpoint%?api_key=%apikey%"

timeout /t 30