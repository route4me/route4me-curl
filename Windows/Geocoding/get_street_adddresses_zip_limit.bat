@ECHO OFF
SET url=https://45.55.208.13:443/street_data/zipcode
SET apikey=11111111111111111111111111111111
SET zipcode=00601
SET offset=0
SET limit=20

ECHO ON

:: get street data filtered by zipcode with limit and offset
curl -o file1.txt -g -X GET -k "%URL%/%zipcode%/%offset%/%limit%/?api_key=%apikey%"

timeout /t 30