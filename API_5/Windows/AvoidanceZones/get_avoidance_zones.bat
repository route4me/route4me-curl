@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/avoidance

SET apikey=11111111111111111111111111111111

:: The example refers to the process of getting all avoidance zones from an user account.

ECHO ON
curl -o get_avoidance_zones_RESPONSE.json -g -k -X GET "%base_url%%endpoint%?api_key=%apikey%"

timeout /t 30
