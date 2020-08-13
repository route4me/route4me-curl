@ECHO OFF

SET base_url=https://wh.route4me.com/modules/api/v5.0
SET endpoint=/route-destinations

SET apikey=11111111111111111111111111111111

ECHO ON

:: The example refers to the process of marking an address as visited.
:: is_visited=1 means address was marked as visited.

curl -o mark_address_as_visited_RESPONSE.json -g -k -X PUT -d "mark_address_as_visited_data.json" "%base_url%%endpoint%?api_key=%apikey%?api_key=%apikey%"

timeout /t 30