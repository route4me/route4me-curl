@ECHO OFF

SET url=https://api.route4me.com/api.v4/territory.php

SET apikey=11111111111111111111111111111111
SET terid=63E27D8186AAE43F202CB97DECBFD826
SET addresses=1
SET orders=1

ECHO ON

:: The example refers to the process of getting Territory zone with covered addresses and orders.

curl -o get_territory_with_addresses_orders_RESPONSE.json -g -k -X GET "%url%?api_key=%apikey%&territory_id=%terid%&addresses=%addresses%&orders=%orders%"

timeout /t 30