@ECHO OFF

SET url=https://rapid.route4me.com/street_data
SET apikey=11111111111111111111111111111111
SET offset=5
SET limit=10

ECHO ON

:: The example refers to the process of getting limited number of the street data.
:: Attention, this endpoint doesn't work at offset=0

curl -o file1.txt -g -X GET -k "%url%/%offset%/%limit%/?api_key=%apikey%"

timeout /t 30