@ECHO OFF

SET url=https://rapid.route4me.com/street_data/zipcode
SET apikey=11111111111111111111111111111111
SET zipcode=00601

ECHO ON

:: The example refers to the process of getting all street data filtered by specified zipcode.

curl -o file1.txt -g -X GET -k "%url%/%zipcode%/?api_key=%apikey%"

timeout /t 30