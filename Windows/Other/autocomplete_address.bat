@ECHO OFF

:: You should insert real test data and your API key for accurate testing

SET url=https://api.route4me.com/autocomplete.php
SET apikey=11111111111111111111111111111111

SET include_ab=true
SET include_orders=false
SET address=10700%20Heatherwood Dr%20Spotsylvania

ECHO ON
curl -o autocomplete_address_RESPONSE.json -g -k -X GET "%url%?api_key=%apikey%&address=%address%&include_ab=%include_ab%&include_orders=%include_orders%"

timeout /t 30