@ECHO OFF

SET url=https://rapid.route4me.com/street_data/zipcode
SET apikey=11111111111111111111111111111111
SET zipcode=00601
SET offset=0
SET limit=10

ECHO ON

:: The example refers to the process of getting street data filtered by zipcode and limited with specified parameters.

curl -o file1.txt -g -X GET -k "%URL%/%zipcode%/%offset%/%limit%/?api_key=%apikey%"

timeout /t 30