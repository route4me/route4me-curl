@ECHO OFF

SET url=https://telematics.route4me.com/api/vendors.php
SET apikey=11111111111111111111111111111111
:: Accepted values for the parameter size: global, regional, local
SET size=global
:: Accepted values for the parameter is_integrated: 1, 0
SET is_integrated=1
SET feature=Satellite
SET country=GB
SET page=1
SET per_page=15

:: The example refers to the process of searching the telematics vendors by sending HTTP parameters.

ECHO ON
curl -o search_vendors_RESPONSE_1.json -g -k -X GET "%url%?api_key=%apikey%&size=%size%&per_page=%per_page%&page=%page%&is_integrated=%is_integrated%"

START /WAIT curl -o search_vendors_RESPONSE_2.json -g -k -X GET "%url%?api_key=%apikey%&feature=%feature%"

START /WAIT curl -o search_vendors_RESPONSE_3.json -g -k -X GET "%url%?api_key=%apikey%&country=%country%"

timeout /t 30