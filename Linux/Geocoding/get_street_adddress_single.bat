@ECHO OFF
SET url=https://45.55.208.13:443/street_data
SET apikey=11111111111111111111111111111111
SET pk=4

ECHO ON

:: get single street data. Parameter pk is street sequential number in all streets list
curl -o file1.txt -g -X GET -k "%URL%/%pk%/?api_key=%apikey%"

timeout /t 30