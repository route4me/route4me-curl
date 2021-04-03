@ECHO OFF

SET url=https://rapid.route4me.com/street_data/service
SET apikey=11111111111111111111111111111111
SET zipcode=00601
SET housenumber=17
SET offset=0
SET limit=20

ECHO ON

:: The example refers to the process of getting street data filtered by specified zipcode and housenumber and limited by specified parameters.

curl -o file1.txt -g -X GET -k "%URL%/%zipcode%/%housenumber%/%offset%/%limit%/?api_key=%apikey%"

timeout /t 30