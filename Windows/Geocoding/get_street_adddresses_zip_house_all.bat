@ECHO OFF
SET url=https://45.55.208.13:443/street_data/service
SET apikey=11111111111111111111111111111111
SET zipcode=00601
SET housenumber=17

ECHO ON

:: get street data filtered by zipcode and housenumber without limit
curl -o file1.txt -g -X GET -k "%URL%/%zipcode%/%housenumber%/?api_key=%apikey%"

timeout /t 30