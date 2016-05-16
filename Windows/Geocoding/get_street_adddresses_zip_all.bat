@ECHO OFF
SET url=https://45.55.208.13:443/street_data/zipcode
SET apikey=11111111111111111111111111111111
SET zipcode=00601

ECHO ON

:: get street data filtered by zipcode without limit
curl -o file1.txt -g -X GET -k "%URL%/%zipcode%/?api_key=%apikey%"

timeout /t 30