@ECHO OFF

SET url=https://rapid.route4me.com/street_data/service
SET apikey=11111111111111111111111111111111
SET zipcode=00601
SET housenumber=17

ECHO ON

:: The example refers to the process of getting street data filtered by specified zipcode and housenumber.

curl -o file1.txt -g -X GET -k "%url%/%zipcode%/%housenumber%/?api_key=%apikey%"

timeout /t 30