@ECHO OFF

SET url=https://rapid.route4me.com/street_data
SET apikey=11111111111111111111111111111111
SET pk=4

ECHO ON

:: The example refers to the process of getting single street data.
:: Parameter pk is street sequential number in all streets list.

curl -o file1.txt -g -X GET -k "%URL%/%pk%/?api_key=%apikey%"

timeout /t 30