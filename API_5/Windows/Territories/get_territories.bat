@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/territories

SET apikey=11111111111111111111111111111111

SET addresses=true


:: The example refers to the process of getting the territory zones from an user's account.

ECHO ON
curl -o get_territories_RESPONSE.json -g -k -X GET "%base_url%%endpoint%?api_key=%apikey%&addresses=1"

timeout /t 30