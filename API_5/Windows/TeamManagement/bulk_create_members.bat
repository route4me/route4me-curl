@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/team/bulk-insert

SET apikey=11111111111111111111111111111111

:: The example refers to the process of bulk creating new members by sending HTTP parameters.

ECHO ON

curl -o bulk_create_members_RESPONSE.json -g -k -X POST -H "accept: application/json" -H "Content-Type: application/json" -d "@bulk_create_members_data.json" "%base_url%%endpoint%?api_key=%apikey%"

timeout /t 30