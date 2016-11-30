@ECHO OFF

SET url=https://rapid.route4me.com/street_data/
SET apikey=11111111111111111111111111111111

ECHO ON

:: The example refers to the process of getting all street data.

curl -o file1.txt -g -X GET -k "%URL%?api_key=%apikey%"

timeout /t 30